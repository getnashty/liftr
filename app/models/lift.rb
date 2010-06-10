class Lift < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 15
  validates_uniqueness_of :user_id, :scope => [:exercise_id, :created_at], :message => "This lift already exists!"

  
  belongs_to :user 
  belongs_to :exercise
     
end
