  xml.instruct!  :xml, :version=>"1.0", :encoding=>"UTF-8"
  
  xml.chart do
     # xml.message "You can broadcast any message to chart from data XML file", :bg_color => "#FFFFFF", :text_color => "#000000"
     xml.series do    
       @lifts.each_with_index do |lift, index|
         if lift.user_id == current_user.id
         xml.value lift.created_at.strftime("%m/%d/%Y"),  :xid => index
          end
       end       
     end
     
       xml.graphs do
        #the gid is used in the settings file to set different settings just for this graph
         xml.graph :gid => 'progress' do
           @lifts.each_with_index do |lift, index|
             progress = lift.weight
                 xml.value progress,  :xid => index, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => "lbs"
           end
         end
       end

     end