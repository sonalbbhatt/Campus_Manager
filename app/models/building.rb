class Building < ActiveRecord::Base
  has_many :rooms
  
  #Buildings model is  associated with rooms models, so it also need to be validated 
  validates_associated :rooms
   
    
  #validates that the following attributes are nor empty
  validates_presence_of :name

  #specify the length constraints by this validation
  validates_length_of :name, :within => 6..15
  
end
