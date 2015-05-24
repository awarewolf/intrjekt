class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :votable_id, polymorphic: true, index: true
      t.string :votable_type
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :votes
  end
end
