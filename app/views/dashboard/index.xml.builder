xml.instruct!  :xml, :version=>"1.0", :encoding=>"UTF-8"

xml.pie do
    
    
    @exercises.each do |exercise|
      if exercise.name != "Body Weight"
      @exvalue=0
      
      @lifts.each_with_index do |lift, index|
          
         if lift.exercise_id==exercise.id
           @exvalue=@exvalue+1
         end
          
      end
      
      xml.slice @exvalue,  :title => exercise.name            
      end
    end

 end