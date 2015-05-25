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
    binding.pry
    @podcasts = Podcast.all #Maybe add pagination?
    render :index
  end

  get :new do
    @podcast = Podcast.new
    render :new
  end

  post :create, map: "podcasts" do

    @podcast = current_user.podcasts.create(params["podcast"])
    # current_user.podcast.create(title: '', :description: )

    if current_user
      redirect "podcasts/#{@podcast.id}"
    else
      render :new
    end
  end

  get :show, map: "podcasts/:id" do
    @podcast = Podcast.find(params[:id])

    # session[:podcast_posts] = @podcast.posts
    session[:podcast_id] = @podcast.id
    session[:podcast_file_location] = @podcast.audio_file_location
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
