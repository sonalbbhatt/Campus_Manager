class Course < ActiveRecord::Base
  has_and_belongs_to_many :instructor # :foreign_key => :instructor_id to join table
  has_and_belongs_to_many :student # :foreign_key => :student_id t join table 
  belongs_to :room # :foreign_key => :room_id  
  belongs_to :semester # :foreign_key => :semester_id  
  

  #this validation allow to enter only integer number
  validates_numericality_of :sec_no, :only_integer => true
   
  #specify the lenght constraints by this validation
  validates_length_of :name, :within => 6..50, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  validates_length_of :description, :within => 6..100
  
end
