Intrjekt::App.controllers :users do
  
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

  end

  get :new do
    render 'new'
  end

  post :create, map: "users" do

  end

  get :show do

  end

  get :edit do

  end

  put :update do

  end

  delete :destroy do

  end

end
