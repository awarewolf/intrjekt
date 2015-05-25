class PodcastsImporter

  ASSOCIATED_USER = 1 #This is hardcoded to be the first user

  def import
    podcast_list = [
      [ "Radiolab", "The incredible, little-known story of the Nazi prisoners of war kept on American soil during World War II.", "Nazi Summer Camp", "https://media2.wnyc.org/i/819/1125/l/80/1/potter.png", "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast15nazicamp.mp3", "http://www.radiolab.org/story/nazi-summer-camp/" ],
      [ "Radiolab", "Highlights from a live Radiolab performance about hearts, driving forces, and the people we love - including a final conversation with Dr. Oliver Sacks.", "Radiolab Live: Tell-Tale Hearts featuring Oliver Sacks", "https://media2.wnyc.org/i/620/372/c/80/1/BAM.jpg", "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab/radiolab051315.mp3", "http://www.radiolab.org/story/radiolab-live-telltale-hearts-featuring-oliver-sacks/" ],
      [ "Radiolab", "Photojournalist Lynsey Addario captured something that happens all the time but few of us get to see, a soldier fatally wounded on the battlefield.", "Sight Unseen", "https://media2.wnyc.org/i/620/372/c/80/1/Addario.jpg", "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast15sightunseen.mp3", "http://www.radiolab.org/story/sight-unseen/" ],
      [ "Radiolab", "Producer Briana Breen and the podcast Love + Radio bring us a story about a very eventful year in the life of an accidental voyeur.", "The Living Room", "https://media2.wnyc.org/i/620/372/l/80/1/351123047_b91fe7e6ff_o.jpg", "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast15thelivingroom.mp3", "http://www.radiolab.org/story/living-room/" ],
    ]

    podcast_list.each do |title, description, episode, image_file_location, audio_file_location, url|
      podcast = Podcast.create(title: title, description: description, episode: episode, image_file_location: image_file_location, audio_file_location: audio_file_location, url: url)

      associate_to_user(ASSOCIATED_USER,podcast)
    end
  end

  def associate_to_user(id,podcast)
    user = User.find(id)
    user.podcasts << podcast
  end

end
