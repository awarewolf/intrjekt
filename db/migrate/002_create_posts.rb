class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references :user
      t.references :podcast
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
