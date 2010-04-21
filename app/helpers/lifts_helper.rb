module LiftsHelper
  
  def exercise_select(f)
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


  def exercise_select2(f)
    options = {}
    options['Bench Press'] = 1 unless @a == 1
    options['Squats'] = 2 unless @b == 1
    options['Deadlifts'] = 3 unless @c == 1
    options['Rows'] = 4 unless @d == 1
    options['Tricep Extension'] = 5 unless @e == 1
    options['Bicep Curl'] = 6 unless @f == 1
    options['Military Press'] = 7 unless @g == 1
    f.select :exercise_id, options
  end
  
  
end
