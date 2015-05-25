class PostsImporter

  PODCAST_ID = 1 #This is hardcoded to be the Radiolab Nazi Summer Camp podcast because it's 1830 seconds long

  def initialize(filename=File.dirname(__FILE__) + "/../../db/data/posts.csv")
    @filename = filename
  end

  def import
    field_names = ['title', 'content', 'time']

    print "Importing posts from #{@filename}: "
    failure_count = 0

      File.open(@filename).each do |line|
        data = line.chomp.split(',')
        attribute_hash = Hash[field_names.zip(data)]
        begin
          @post = Post.create!(attribute_hash)
          associate_post_to_random_user
          print "."; STDOUT.flush
        rescue ActiveRecord::UnknownAttributeError => ex
          puts ex
          print "!"; STDOUT.flush
          failure_count += 1
        end
      end

    associate_post_to_podcast(PODCAST_ID)

    failures = "(failed to create #{failure_count} posts records)" if failure_count > 0
    puts "\nDONE #{failures}\n\n"
  end

  def associate_post_to_podcast(id)
    Podcast.find(id).posts << @post
  end

  def associate_post_to_random_user
    offset = rand(User.count)+1
    User.find(offset).posts << @post
  end

end