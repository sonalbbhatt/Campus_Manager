class Student < ActiveRecord::Base
  belongs_to :user #:foreign_key => :user_id  
  has_and_belongs_to_many :course # :foreign_key => :course_id to join table


  #specify the lenght constraints by this validation
  validates_length_of :name, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  validates_length_of :address, :within => 6..50
  
  #validates that the following attributes are nor empty
  validates_presence_of :name, :address, :st_level
end
