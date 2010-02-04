class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students, :primary_key => :id  do |t|
      t.integer :user_id
      t.integer :course_id
      t.string :name
      t.date :dob
      t.string :address
      t.string :st_level

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
