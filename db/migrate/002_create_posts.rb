class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :podcast, index: true
      t.string :title
      t.text :content
      t.datetime :time
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
