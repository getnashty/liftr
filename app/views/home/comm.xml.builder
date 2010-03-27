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
       
      xml.graph :gid => 'benchpress' do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == 1
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != 1

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == 1
                                    
                 valnum=valnum+1 
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
                 
                 end
               end
             end
               
               date2=dates
               
             end
      end
      
      
      
      
      xml.graph :gid => 'squats' do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == 2
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != 2

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == 2
                                    
                 valnum=valnum+1 
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
                 
                 end
               end
             end
               
               date2=dates
               
             end
      end
      
      
      xml.graph :gid => 'deadlifts' do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == 3
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != 3

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == 3
                                    
                 valnum=valnum+1 
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
                 
                 end
               end
             end
               
               date2=dates
               
             end
      end
      
      xml.graph :gid => 'rows' do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == 4
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != 4

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == 4
                                    
                 valnum=valnum+1 
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
                 
                 end
               end
             end
               
               date2=dates
               
             end
      end
      
      
      xml.graph :gid => 'triceps' do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == 5
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != 5

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == 5
                                    
                 valnum=valnum+1 
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
                 
                 end
               end
             end
               
               date2=dates
               
             end
      end
      
      
      xml.graph :gid => 'biceps' do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == 6
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != 6

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == 6
                                    
                 valnum=valnum+1 
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
                 
                 end
               end
             end
               
               date2=dates
               
             end
      end
      
      
      xml.graph :gid => 'military' do
        
        count=0
        date2=1
        valnum=0
        
       @lifts.each_with_index do |lift, index|
                          
          dates=lift.created_at.strftime("%m/%d/%Y")
                                
                 if dates!=date2 && lift.exercise_id == 7
                   
                   valnum=1 
                   count=count+1
            
                 progress = lift.weight
                 xml.value valnum,  :xid => count, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "times"                 
       
               elsif if dates!=date2 && lift.exercise_id != 7

                  count=count+1
                  valnum=0 
                                

               elsif if dates==date2 && lift.exercise_id == 7
                                    
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