class CreatePodcasts < ActiveRecord::Migration
  def self.up
    create_table :podcasts do |t|
      t.string :title
      t.text :description
      t.string :image_file_location
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :podcasts
  end
end
