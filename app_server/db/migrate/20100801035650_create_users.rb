class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :avatar_url

      t.timestamps
    end
    User.create(:name => "Shane", :avatar_url => "/images/1.jpeg")
    User.create(:name => "Jen", :avatar_url => "/images/2.jpeg")
    User.create(:name => "Steve", :avatar_url => "/images/3.jpeg")
    User.create(:name => "Rex", :avatar_url => "/images/4.jpeg")
    User.create(:name => "Molly", :avatar_url => "/images/5.jpeg")
    User.create(:name => "Ron", :avatar_url => "/images/6.jpeg")
  end

  def self.down
    drop_table :users
  end
end
