class CreateSemesters < ActiveRecord::Migration
  def self.up
    create_table :semesters, :primary_key => :id  do |t|
      t.string :name
      t.date :st_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :semesters
  end
end
