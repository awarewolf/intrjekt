class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.references :votable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :votes
  end
end
