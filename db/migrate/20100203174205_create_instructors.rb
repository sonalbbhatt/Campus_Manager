class CreateInstructors < ActiveRecord::Migration
  def self.up
    create_table :instructors, :primary_key => :id  do |t|
      t.integer :user_id
      t.integer :course_id
      t.string :name
      t.date :dob
      t.string :address
      t.string :department
      t.integer :no_course_teach
      t.integer :salary

      t.timestamps
    end
  end

  def self.down
    drop_table :instructors
  end
end
