xml.instruct!  :xml, :version=>"1.0", :encoding=>"UTF-8"

xml.pie do
    
      @bench=0
      @squats=0
      @dead=0
      @rows=0
      @tricep=0
      @bicep=0
      @military=0
     
       @lifts.each_with_index do |lift, index|
          
         if lift.exercise_id==1
           @bench=@bench+1
         end
         
         if lift.exercise_id==2
           @squats=@squats+1
         end
         
         if lift.exercise_id==3
           @dead=@dead+1
         end
         
         if lift.exercise_id==4
           @rows=@rows+1
         end
         
         if lift.exercise_id==5
           @tricep=@tricep+1
         end
         
         if lift.exercise_id==6
           @bicep=@bicep+1
         end
         
         if lift.exercise_id==7
           @military=@military+1
         end
          
         
      end


                      
            xml.slice @bench,  :title => "Bench Presses", :color => "#CC0000"              
            xml.slice @squats,  :title => "Squats", :color => "#FF6600"               
            xml.slice @dead,  :title => "Deadlifts", :color => "#003399"               
            xml.slice @rows,  :title => "Rows", :color => "#FFFF00"               
            xml.slice @tricep,  :title => "Tricep Extensions", :color => "#339933"                
            xml.slice @bicep,  :title => "Bicep Curls", :color => "#0000FF"                
            xml.slice @military,  :title => "Military Presses", :color => "#99FFFF"                
           
   end