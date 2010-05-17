class DashboardController < ApplicationController


def index
    @lifts = Lift.find(:all, :order => 'created_at') 
    @exercises = Exercise.all
    @users = User.find(:all) 
    @usernum = User.count
    @liftnum = Lift.count
    @muscles = Muscle.all
    @pipe_data_link = formatted_index_dashboard_url(:xml)
    respond_to do |format|
      format.html
      format.xml  { render :action => "index.xml.builder", :layout => false }
    end
  end
  
  def comm
      @lifts = Lift.find(:all, :order => 'created_at') 
      @exercises = Exercise.all
      @comm_data_link = formatted_comm_dashboard_url(:xml)
      respond_to do |format|
        format.html
        format.xml  { render :action => "comm.xml.builder", :layout => false }
      end
    end
  
end