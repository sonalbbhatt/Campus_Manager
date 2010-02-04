class Room < ActiveRecord::Base
  belongs_to :building #:foreign_key => :building_id 
  has_many :courses
  
  
   #Rooms model is  associated with courses models, so it also need to be validated 
   validates_associated :courses
end
