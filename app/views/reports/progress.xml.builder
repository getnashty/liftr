  xml.instruct!  :xml, :version=>"1.0", :encoding=>"UTF-8"
  
  xml.chart do
     # xml.message "You can broadcast any message to chart from data XML file", :bg_color => "#FFFFFF", :text_color => "#000000"
     xml.series do    
       @lifts.each_with_index do |lift, index|
         if lift.user_id == current_user.id
           dates=lift.created_at.strftime("%m/%d/%Y")
         xml.value dates,  :xid => index
          end
       end       
     end
     
       xml.graphs do
        #the gid is used in the settings file to set different settings just for this graph
         xml.graph :gid => 'benchpress' do
           @lifts.each_with_index do |lift, index|
             if lift.exercise_id == 1
             progress = lift.weight
                 xml.value progress,  :xid => index, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"
           end
          end
         end
         
         xml.graph :gid => 'squats' do
           @lifts.each_with_index do |lift, index|
             if lift.exercise_id == 2
             test = lift.weight
                 xml.value test,  :xid => index, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"
           end
          end
         end
         
         xml.graph :gid => 'deadlifts' do
           @lifts.each_with_index do |lift, index|
            if lift.exercise_id == 3
             test = lift.weight
                 xml.value test,  :xid => index, :title => "niggas", :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"
           end
          end
         end
         
       end

     end