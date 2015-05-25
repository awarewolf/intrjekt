Intrjekt::App.controllers :posts do
  
  get :index do
    # @posts = Post.all #Maybe add pagination?
    # render :index
  end

  get :new do

    @post = Post.new
    render :new
  end

  post :create, map: "posts" do

    @podcast = Podcast.find(session[:podcast_id])

    @post = current_user.posts.create(title: params[:title], time: params[:time].to_i, content: params[:content])

    @podcast.posts << @post

  end

  get :show, map: "posts/:id" do
    @post = Post.find(params[:id])
    render :show
  end

  get :edit, map: "posts/:id/edit" do
    @post = Post.find(params[:id])
    render :edit
  end

  put :update, map: "posts/:id" do
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect "posts/#{@post.id}"
    else
      render :edit
    end
  end

  delete :destroy, map: "posts/:id" do
    @post = Post.find(params[:id])
    @post.destroy
    redirect "posts"
  end
end
