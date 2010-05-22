  xml.instruct!  :xml, :version=>"1.0", :encoding=>"UTF-8"
  
  xml.chart do
     # xml.message "You can broadcast any message to chart from data XML file", :bg_color => "#FFFFFF", :text_color => "#000000"
     xml.series do     
       date2=1
       count=0      
       @lifts.each_with_index do |lift, index|
         if lift.user_id == current_user.id
           dates=lift.created_at.strftime("%m/%d/%Y")
  
            if dates!=date2
            count=count+1
            xml.value dates,  :xid => count
            date2=dates
            end
            
          end
       end       
     end
     
     
     @dead=2
     @bench=2
     @squat=2
     @row=2
     @tricep=2
     @bicep=2
     @military=2
     @body=2
    
     
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
           @lifts.each_with_index do |lift, index|
                 if lift.user_id == current_user.id && lift.exercise_id == 8
                   @body=1
                 end
            end
        
     
       xml.graphs do
        #the gid is used in the settings file to set different settings just for this graph
         
         if @bench==1
         xml.graph :gid => 'benchpress' do
           
           count=0
           date2=1
           
          @lifts.each_with_index do |lift, index|
             
                if lift.user_id == current_user.id
                  
                  dates=lift.created_at.strftime("%m/%d/%Y")
                                   
                    if dates!=date2 && lift.exercise_id == 1
                      
                      count=count+1
               
                    progress = lift.weight
                    xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 
          
                  elsif if dates!=date2 && lift.exercise_id != 1

                     count=count+1                 
   
                  elsif if dates==date2 && lift.exercise_id == 1
                                        
                    progress = lift.weight
                    xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 
                    
                    end
                  end
                end
                  
                  date2=dates
                  
                end
          end
          
         end
       end

         
       if @squat==1
       xml.graph :gid => 'squats' do

            count=0
            date2=1

           @lifts.each_with_index do |lift, index|

                 if lift.user_id == current_user.id

                   dates=lift.created_at.strftime("%m/%d/%Y")

                     if dates!=date2 && lift.exercise_id == 2

                       count=count+1

                     progress = lift.weight
                     xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                   elsif if dates!=date2 && lift.exercise_id != 2

                      count=count+1                 

                   elsif if dates==date2 && lift.exercise_id == 2

                     progress = lift.weight
                     xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                     end
                   end
                 end

                   date2=dates

                 end
           end

          end
       end
       
       if @row==1
       xml.graph :gid => 'rows' do

            count=0
            date2=1

           @lifts.each_with_index do |lift, index|

                 if lift.user_id == current_user.id

                   dates=lift.created_at.strftime("%m/%d/%Y")

                     if dates!=date2 && lift.exercise_id == 4

                       count=count+1

                     progress = lift.weight
                     xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                   elsif if dates!=date2 && lift.exercise_id != 4

                      count=count+1                 

                   elsif if dates==date2 && lift.exercise_id == 4

                     progress = lift.weight
                     xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                     end
                   end
                 end

                   date2=dates

                 end
           end

          end
       end
       
       
       if @tricep==1
       xml.graph :gid => 'triceps' do

            count=0
            date2=1

           @lifts.each_with_index do |lift, index|

                 if lift.user_id == current_user.id

                   dates=lift.created_at.strftime("%m/%d/%Y")

                     if dates!=date2 && lift.exercise_id == 5

                       count=count+1

                     progress = lift.weight
                     xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                   elsif if dates!=date2 && lift.exercise_id != 5

                      count=count+1                 

                   elsif if dates==date2 && lift.exercise_id == 5

                     progress = lift.weight
                     xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                     end
                   end
                 end

                   date2=dates

                 end
           end

          end
       end
         
         
         if @bicep==1
         xml.graph :gid => 'biceps' do

              count=0
              date2=1

             @lifts.each_with_index do |lift, index|

                   if lift.user_id == current_user.id

                     dates=lift.created_at.strftime("%m/%d/%Y")

                       if dates!=date2 && lift.exercise_id == 6

                         count=count+1

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                     elsif if dates!=date2 && lift.exercise_id != 6

                        count=count+1                 

                     elsif if dates==date2 && lift.exercise_id == 6

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                       end
                     end
                   end

                     date2=dates

                   end
             end

            end
         end
         
         if @body==1
         xml.graph :gid => 'body' do

              count=0
              date2=1

             @lifts.each_with_index do |lift, index|

                   if lift.user_id == current_user.id

                     dates=lift.created_at.strftime("%m/%d/%Y")

                       if dates!=date2 && lift.exercise_id == 8

                         count=count+1

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                     elsif if dates!=date2 && lift.exercise_id != 8

                        count=count+1                 

                     elsif if dates==date2 && lift.exercise_id == 8

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                       end
                     end
                   end

                     date2=dates

                   end
             end

            end
         end         
         
         if @military==1
         xml.graph :gid => 'military' do

              count=0
              date2=1

             @lifts.each_with_index do |lift, index|

                   if lift.user_id == current_user.id

                     dates=lift.created_at.strftime("%m/%d/%Y")

                       if dates!=date2 && lift.exercise_id == 7

                         count=count+1

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                     elsif if dates!=date2 && lift.exercise_id != 7

                        count=count+1                 

                     elsif if dates==date2 && lift.exercise_id == 7

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                       end
                     end
                   end

                     date2=dates

                   end
             end

            end
         end
         
         if @dead==1
         xml.graph :gid => 'deadlifts' do

              count=0
              date2=1

             @lifts.each_with_index do |lift, index|

                   if lift.user_id == current_user.id

                     dates=lift.created_at.strftime("%m/%d/%Y")

                       if dates!=date2 && lift.exercise_id == 3

                         count=count+1

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                     elsif if dates!=date2 && lift.exercise_id != 3

                        count=count+1                 

                     elsif if dates==date2 && lift.exercise_id == 3

                       progress = lift.weight
                       xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"                 

                       end
                     end
                   end

                     date2=dates

                   end
             end

            end
         end
       end

     end