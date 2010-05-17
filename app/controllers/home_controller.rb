class HomeController < ApplicationController


def index
    @lifts = Lift.find(:all, :order => 'created_at') 
    @exercises = Exercise.all
    @users = User.find(:all) 
    @usernum = User.count
    @liftnum = Lift.count
    respond_to do |format|
      format.html
      format.xml  { render :action => "index.xml.builder", :layout => false }
    end
  end

  
end