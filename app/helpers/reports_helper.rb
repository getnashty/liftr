module ReportsHelper
    
  def max_main
    @maxmain=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==@exid && count==0
    		@maxmain=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==@exid && lift.weight>@maxmain

    		@maxmain=lift.weight

    	end
    end
  end  
  
end
