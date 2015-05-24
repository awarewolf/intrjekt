class CreateEpisodes < ActiveRecord::Migration
  def self.up
    create_table :episodes do |t|
      t.belongs_to :podcast, :index true
      t.integer :number
      t.string :title
      t.text :description
      t.string :audio_file_location
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :episodes
  end
end
