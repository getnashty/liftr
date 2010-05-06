module LiftsHelper
  
  def exercise_select(f)
    options = {}
    today=Time.now.strftime("%m/%d/%Y") 
            
    @exercises.each do |exercise| 
      noway=0
      
    if exercise.name != "Body Weight" && exercise.muscle_id == @muscleid
    @lifts.each do |lift| 
     if lift.user_id == current_user.id && lift.created_at.strftime("%m/%d/%Y")==today && lift.exercise_id == exercise.id && exercise.name != "Body Weight"
        noway=1
      end
    end
    options[exercise.name] = exercise.id unless noway == 1
    end
  end
  
    f.select :exercise_id, options
  end
  
  
  def optcount
    
      today=Time.now.strftime("%m/%d/%Y") 
      @xcount=0
      @lcount=0
      
      @exercises.each do |exercise| 
          if exercise.name != "Body Weight" && exercise.muscle_id == @muscleid
            @xcount=@xcount+1
           
            @lifts.each do |lift| 

              if lift.user_id == current_user.id && lift.created_at.strftime("%m/%d/%Y")==today && lift.exercise_id == exercise.id && exercise.name != "Body Weight"
                @lcount=@lcount+1
              end

            end
            
          end
               
      end
  
            
  end
  
  
  def exercise_edit(f)
    options = {}
    today=Time.now.strftime("%m/%d/%Y") 
            
    @exercises.each do |exercise| 
      noway=0
      
    if exercise.name != "Body Weight"
    @lifts.each do |lift| 
     if lift.user_id == current_user.id && lift.created_at.strftime("%m/%d/%Y")==today && lift.exercise_id == exercise.id && exercise.name != "Body Weight"
        noway=1
      end
    end
    options[exercise.name] = exercise.id unless noway == 1
    end
  end
  
    f.select :exercise_id, options
  end
  
  
end
