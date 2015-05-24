Intrjekt::App.controllers :podcasts do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index do
    @podcasts = Podcast.all #Maybe add pagination?
    render :index
  end

  get :new do
    @podcast = Podcast.new
    render :new
  end

  post :create, map: "podcasts" do
    @podcast = Podcast.new(params[:podcast])
    if @podcast.save
      redirect "podcasts/#{@podcast.id}"
    else
      render :new
    end
  end

  get :show, map: "podcasts/:id" do
    @podcast = Podcast.find(params[:id])
    @id_param = params[:id]
    render :show
  end

  get :edit, map: "podcasts/:id/edit" do
    @podcast = Podcast.find(params[:id])
    render :edit
  end

  put :update, map: "podcasts/:id" do
    @podcast = Podcast.find(params[:id])
    if @podcast.update_attributes(params[:podcast])
      redirect "podcasts/#{@podcast.id}"
    else
      render :edit
    end
  end

  delete :destroy, map: "podcasts/:id" do
    @podcast = Podcast.find(params[:id])
    @podcast.destroy
    redirect "podcasts"
  end

end
