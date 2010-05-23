class DashboardController < ApplicationController
  before_filter :authenticate

def index
    @lift = Lift.new
    @lifts=current_user.lifts.sort_by(&:created_at).reverse
    #@lifts2 = Lift.paginate_by_exercise_id ("8", :page => params[:page], :order => 'created_at DESC')
    
    #@lifts = Lift.all
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
  
  def destroy
    @lift = Lift.find(params[:id])
    @lift.destroy

    respond_to do |format|
      format.html { redirect_to(dashboard_url) }
      format.xml  { head :ok }
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