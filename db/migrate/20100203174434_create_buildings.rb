class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings, :primary_key => :id  do |t|
      t.string :code
      t.string :name
      t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :buildings
  end
end
