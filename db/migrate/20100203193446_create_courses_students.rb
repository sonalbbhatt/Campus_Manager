class CreateCoursesStudents < ActiveRecord::Migration
  def self.up
    create_table :courses_students,:id => false do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :courses_students
  end
end
