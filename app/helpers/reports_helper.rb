module ReportsHelper
  
  def max_bench
    @maxbench=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==1 && count==0
    		@maxbench=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==1 && lift.weight>@maxbench

    		@maxbench=lift.weight

    	end
    end
  end
  
  def max_squat
    @maxsquat=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==2 && count==0
    		@maxsquat=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==2 && lift.weight>@maxsquat

    		@maxsquat=lift.weight

    	end
    end
  end
  
  def max_dead
    @maxdead=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==3 && count==0
    		@maxdead=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==3 && lift.weight>@maxdead

    		@maxdead=lift.weight

    	end
    end
  end
  
  def max_row
    @maxrow=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==4 && count==0
    		@maxrow=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==4 && lift.weight>@maxrow

    		@maxrow=lift.weight

    	end
    end
  end
  
  def max_tri
    @maxtri=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==5 && count==0
    		@maxtri=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==5 && lift.weight>@maxtri

    		@maxtri=lift.weight

    	end
    end
  end
  
  def max_bi
    @maxbi=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==6 && count==0
    		@maxbi=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==6 && lift.weight>@maxbi

    		@maxbi=lift.weight

    	end
    end
  end
  
  def max_mil
    @maxmil=0
    weight=0
    count=0

    @lifts.each do |lift|

    	if lift.user_id == current_user.id && lift.exercise_id==7 && count==0
    		@maxmil=lift.weight
    	end

    	count=count+1

    	if lift.user_id == current_user.id && lift.exercise_id==7 && lift.weight>@maxmil

    		@maxmil=lift.weight

    	end
    end
  end
  
  
  def show_stats
    
    @dead=2
    @bench=2
    @squat=2
    @row=2
    @tricep=2
    @bicep=2
    @military=2

    @count=0


    @lifts.each_with_index do |lift, index|
          if lift.user_id == current_user.id && lift.exercise_id == 1
            @bench=1
          end
     end
     @lifts.each_with_index do |lift, index|
           if lift.user_id == current_user.id && lift.exercise_id == 2
             @squat=1
           end
      end
      @lifts.each_with_index do |lift, index|
            if lift.user_id == current_user.id && lift.exercise_id == 3
              @dead=1
            end
       end
       @lifts.each_with_index do |lift, index|
             if lift.user_id == current_user.id && lift.exercise_id == 4
               @row=1
             end
        end
        @lifts.each_with_index do |lift, index|
              if lift.user_id == current_user.id && lift.exercise_id == 5
                @tricep=1
              end
         end
         @lifts.each_with_index do |lift, index|
               if lift.user_id == current_user.id && lift.exercise_id == 6
                 @bicep=1
               end
          end
          @lifts.each_with_index do |lift, index|
                if lift.user_id == current_user.id && lift.exercise_id == 7
                  @military=1
                end
           end
    
  end
  
  
  
end
