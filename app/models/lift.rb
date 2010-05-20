class Lift < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 15
  
  belongs_to :user 
  belongs_to :exercise
     
end
