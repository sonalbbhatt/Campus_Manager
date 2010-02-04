class Semester < ActiveRecord::Base
   has_many :courses
  
  #Semester model is  associated with courses models, so it also need to be validated 
  validates_associated :courses
   
  #validates the atributes' values are included in a given set at the time of creation
  validates_format_of :name ::with => /\A[a-zA-Z]+\z/+[0-9], :message => "No Special characters allowed", :on => :create
  
end
