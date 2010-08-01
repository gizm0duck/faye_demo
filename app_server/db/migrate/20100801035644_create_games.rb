class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :name

      t.timestamps
    end
    Game.create(:name => "First Game")
    Game.create(:name => "Another Game")
  end

  def self.down
    drop_table :games
  end
end
