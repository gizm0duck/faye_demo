class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name

      t.timestamps
    end
    User.create(:name => "Shane")
    User.create(:name => "Jen")
    User.create(:name => "Steve")
    User.create(:name => "Rex")
    User.create(:name => "Molly")
    User.create(:name => "Ron")
  end

  def self.down
    drop_table :users
  end
end
