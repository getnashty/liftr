xml.instruct!  :xml, :version=>"1.0", :encoding=>"UTF-8"

xml.chart do
   # xml.message "You can broadcast any message to chart from data XML file", :bg_color => "#FFFFFF", :text_color => "#000000"
   xml.series do     
     date2=1
     count=0      
     @lifts.each_with_index do |lift, index|
         dates=lift.created_at.strftime("%m/%d/%Y")

          if dates!=date2
          count=count+1
          xml.value dates,  :xid => count
          date2=dates
          end
          
        end
   end
   
      
     xml.graphs do
      #the gid is used in the settings file to set different settings just for this graph
       
      @exercises.each do |exercise| 

      xml.graph (
      :gid => exercise.name,
      :axis => 'left',
      :selected => 'true',
      :bullet => 'round_outlined', 
      :bullet_size => '10',
      :bullet_alpha => '100',
      :line_width => '4',
      :line_alpha => '50',
      :fill_alpha => '5',
      :title => exercise.name,
      :selected => 'true',
      :balloon_text => exercise.name
      ) do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == exercise.id
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != exercise.id

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == exercise.id
                                    
                 valnum=valnum+1 
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
                 
                 end
               end
             end
               
               date2=dates
               
             end
      end
    end


       

       end

   end