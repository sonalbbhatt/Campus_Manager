class User < ActiveRecord::Base
  has_many :students
  has_many :instructors
  
  #User model is  associated with students, instructors models, so they also need to validated 
  validates_associated :students, :instructors
  
  #if there are two text fields for email/password and want to confirm it
  validates_confirmation_of :email_id, :password
  
  #validates the atributes' values are included in a given set at the time of creation
  validates_format_of :email_id, :password, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  #specify the lenght constraints by this validation
  validates_length_of :u_name, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  validates_length_of :password, :within => 6..20
  validates_length_of :email_id, :within => 1..40
  
  #validates that the following attributes are nor empty
  validates_presence_of :u_name, :password, :email_id

  #validates that the value is unique
  validates_uniqueness_of :u_name, :email_id 
end
