class Exercise < ActiveRecord::Base
  
  belongs_to :muscle
  has_many :lifts
  
end
