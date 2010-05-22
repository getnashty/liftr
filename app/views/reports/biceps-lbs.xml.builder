xml.instruct!  :xml, :version=>"1.0", :encoding=>"UTF-8"

xml.chart do
   # xml.message "You can broadcast any message to chart from data XML file", :bg_color => "#FFFFFF", :text_color => "#000000"
   xml.series do     
     date2=1
     count=0      
     @lifts.each do |lift|
         dates=lift.created_at.strftime("%m/%d/%Y")

          if dates!=date2
          count=count+1
          xml.value dates,  :xid => count
          date2=dates
          end
          
     end       
   end
   
@midly=Muscle.find_by_name("Biceps")      
   
xml.graphs do
      #the gid is used in the settings file to set different settings just for this graph
       
    @exercises.each do |exercise|
      if exercise.muscle_id == @midly.id
          
       xml.graph (
       :gid => exercise.name,
       :axis => 'left',
       :selected => 'true',
       :bullet => 'round_outlined', 
       :bullet_size => '10',
       :bullet_alpha => '100',
       :line_width => '4',
       :line_alpha => '50',
       :fill_alpha => '25',
       :hidden => 'true',
       :title => exercise.name,
       :balloon_text => '{value} lbs {description}'
       ) do
         
         count=0
         date2=1
         
        @lifts.each_with_index do |lift, index|
                           
                dates=lift.created_at.strftime("%m/%d/%Y")
                                 
                  if dates!=date2 && lift.exercise_id == exercise.id
                    
                    count=count+1
             
                  progress = lift.weight
                  xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => exercise.name                 
        
                elsif if dates!=date2 && lift.exercise_id != exercise.id

                   count=count+1                 
 
                elsif if dates==date2 && lift.exercise_id == exercise.id
                                      
                  progress = lift.weight
                  xml.value progress,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => exercise.name                 
                  
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