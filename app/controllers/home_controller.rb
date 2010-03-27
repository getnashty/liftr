class HomeController < ApplicationController


def landing
    @lifts = Lift.find(:all, :order => 'created_at') 
    @exercises = Exercise.all
    @landing_data_link = formatted_landing_home_url(:xml)
    respond_to do |format|
      format.html
      format.xml  { render :action => "landing.xml.builder", :layout => false }
    end
  end
  
  def comm
      @lifts = Lift.find(:all, :order => 'created_at') 
      @exercises = Exercise.all
      @comm_data_link = formatted_comm_home_url(:xml)
      respond_to do |format|
        format.html
        format.xml  { render :action => "comm.xml.builder", :layout => false }
      end
    end
  
end