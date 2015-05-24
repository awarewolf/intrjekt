class CreatePodcasts < ActiveRecord::Migration
  def self.up
    create_table :podcasts do |t|
      t.belongs_to :user, index: true
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
