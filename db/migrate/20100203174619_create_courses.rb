class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses, :primary_key => :id  do |t|
      t.integer :student_id
      t.integer :instructor_id
      t.integer :room_id
      t.integer :semester_id
      t.integer :section_no
      t.string :code
      t.string :name
      t.string :description
      t.time :time

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
