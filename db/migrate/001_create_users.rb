class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.datetime :date_of_birth
      t.string :email
      t.string :timestamps
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
