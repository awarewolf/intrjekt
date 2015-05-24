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
    @post = Post.new(params[:post])
    if @post.save
      redirect "posts/#{@post.id}"
    else
      render :new
    end
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
