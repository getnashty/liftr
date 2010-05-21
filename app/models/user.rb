class User < ActiveRecord::Base
  include Clearance::User
  
  has_many :lifts
  has_many :exercises, :through => :lifts, :uniq => true
    
end
