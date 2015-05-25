Intrjekt::App.controllers :json do

  get "/posts" do
    content_type :json

    # session[:podcast_id]
    # session[:podcast_file_location]

    @posts = {}

    @podcast = Podcast.find(session[:podcast_id])

    @podcast.posts.each do |post|
      @posts[post.time] = post.content
    end

    @posts.to_json

  end

end