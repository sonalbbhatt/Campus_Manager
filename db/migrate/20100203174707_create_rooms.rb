class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms, :primary_key => :id  do |t|
      t.integer :building_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
