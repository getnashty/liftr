require 'RMagick'

class ReportsController < ApplicationController
  before_filter :authenticate
  skip_before_filter :verify_authenticity_token

  def export
    width = params[:width].to_i
    height = params[:height].to_i
    data = {}
    img = Magick::Image.new(width, height)
    height.times do |y|
      row = params["r#{y}"].split(',')
      row.size.times do |r|
        pixel = row[r].to_s.split(':')
        pixel[0] = pixel[0].to_s.rjust(6, '0')
        if pixel.size == 2
          pixel[1].to_i.times do
            (data[y] ||= []) << pixel[0]
          end
        else
          (data[y] ||= []) << pixel[0]
        end
      end
      width.times do |x|
        img.pixel_color(x, y, "##{data[y][x]}")
      end
    end
    img.format = "PNG"
    send_data(img.to_blob , :type => 'image/png', :filename => "chart?#{rand(99999999).to_i}.png")
  end

def progress
    #@lifts = Lift.find(:all, :order => 'created_at') 
    @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
    #@exercises = Exercise.all
    @exercises = current_user.exercises
    @muscles = Muscle.all
    @progress_data_link = formatted_progress_reports_url(:xml)
    @progress_data_link_percent = formatted_percent_reports_url(:xml)
    respond_to do |format|
      format.html
      format.xml  { render :action => "progress.xml.builder", :layout => false }
    end
  end
  
  def percent
      #@lifts = Lift.find(:all, :order => 'created_at') 
      @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
      #@exercises = Exercise.all
      @exercises = current_user.exercises
      @muscles = Muscle.all
      @percent_data_link = formatted_percent_reports_url(:xml)
      respond_to do |format|
        format.html
        format.xml  { render :action => "percent.xml.builder", :layout => false }
      end
    end
  
    def chest
        @muscler = "Chest"
        #@lifts = Lift.find(:all, :order => 'created_at') 
        @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
        #@exercises = Exercise.all
        @exercises = current_user.exercises
        @muscles = Muscle.all
        @chest_pounds_data_link = formatted_chest_reports_url(:xml)
        @chestpercent_data_link = formatted_chest_percent_reports_url(:xml)
        respond_to do |format|
          format.html
          format.xml  { render :action => "chest-lbs.xml.builder", :layout => false }
        end
      end
      
      def chest_percent
          @muscler = "Chest"
          #@lifts = Lift.find(:all, :order => 'created_at') 
          @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
          #@exercises = Exercise.all
          @exercises = current_user.exercises
          @muscles = Muscle.all
          @chestpercent_data_link = formatted_chest_percent_reports_url(:xml)
          respond_to do |format|
            format.html
            format.xml  { render :action => "chest-percent.xml.builder", :layout => false }
          end
        end


        def back
            @muscler = "Back"
            #@lifts = Lift.find(:all, :order => 'created_at') 
            @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
            #@exercises = Exercise.all
            @exercises = current_user.exercises
            @muscles = Muscle.all
            @back_pounds_data_link = formatted_back_reports_url(:xml)
            @backpercent_data_link = formatted_back_percent_reports_url(:xml)
            respond_to do |format|
              format.html
              format.xml  { render :action => "back-lbs.xml.builder", :layout => false }
            end
          end

          def back_percent
              @muscler = "Back"
              #@lifts = Lift.find(:all, :order => 'created_at') 
              @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
              #@exercises = Exercise.all
              @exercises = current_user.exercises
              @muscles = Muscle.all
              respond_to do |format|
                format.html
                format.xml  { render :action => "back-percent.xml.builder", :layout => false }
              end
            end

            def biceps
                @muscler = "Biceps"
                #@lifts = Lift.find(:all, :order => 'created_at') 
                @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                #@exercises = Exercise.all
                @exercises = current_user.exercises
                @muscles = Muscle.all
                @biceps_pounds_data_link = formatted_biceps_reports_url(:xml)
                @bicepspercent_data_link = formatted_biceps_percent_reports_url(:xml)
                respond_to do |format|
                  format.html
                  format.xml  { render :action => "biceps-lbs.xml.builder", :layout => false }
                end
              end

              def biceps_percent
                  @muscler = "Biceps"
                  #@lifts = Lift.find(:all, :order => 'created_at') 
                  @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                  #@exercises = Exercise.all
                  @exercises = current_user.exercises
                  @muscles = Muscle.all
                  respond_to do |format|
                    format.html
                    format.xml  { render :action => "biceps-percent.xml.builder", :layout => false }
                  end
                end
                
                def legs
                    @muscler = "Legs"
                    #@lifts = Lift.find(:all, :order => 'created_at') 
                    @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                    #@exercises = Exercise.all
                    @exercises = current_user.exercises
                    @muscles = Muscle.all
                    @legs_pounds_data_link = formatted_legs_reports_url(:xml)
                    @legspercent_data_link = formatted_legs_percent_reports_url(:xml)
                    respond_to do |format|
                      format.html
                      format.xml  { render :action => "legs-lbs.xml.builder", :layout => false }
                    end
                  end

                  def legs_percent
                      @muscler = "Legs"
                      #@lifts = Lift.find(:all, :order => 'created_at') 
                      @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                      #@exercises = Exercise.all
                      @exercises = current_user.exercises
                      @muscles = Muscle.all
                      respond_to do |format|
                        format.html
                        format.xml  { render :action => "legs-percent.xml.builder", :layout => false }
                      end
                    end                
                
                    def shoulders
                        @muscler = "Shoulders"
                        #@lifts = Lift.find(:all, :order => 'created_at') 
                        @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                        #@exercises = Exercise.all
                        @exercises = current_user.exercises
                        @muscles = Muscle.all
                        @shoulders_pounds_data_link = formatted_shoulders_reports_url(:xml)
                        @shoulderspercent_data_link = formatted_shoulders_percent_reports_url(:xml)
                        respond_to do |format|
                          format.html
                          format.xml  { render :action => "shoulders-lbs.xml.builder", :layout => false }
                        end
                      end

                      def shoulders_percent
                          @muscler = "Shoulders"
                          #@lifts = Lift.find(:all, :order => 'created_at') 
                          @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                          #@exercises = Exercise.all
                          @exercises = current_user.exercises
                          @muscles = Muscle.all
                          respond_to do |format|
                            format.html
                            format.xml  { render :action => "shoulders-percent.xml.builder", :layout => false }
                          end
                        end
                        
                        def triceps
                            @muscler = "Triceps"
                            #@lifts = Lift.find(:all, :order => 'created_at') 
                            @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                            #@exercises = Exercise.all
                            @exercises = current_user.exercises
                            @muscles = Muscle.all
                            @triceps_pounds_data_link = formatted_triceps_reports_url(:xml)
                            @tricepspercent_data_link = formatted_triceps_percent_reports_url(:xml)
                            respond_to do |format|
                              format.html
                              format.xml  { render :action => "triceps-lbs.xml.builder", :layout => false }
                            end
                          end

                          def triceps_percent
                              @muscler = "Triceps"
                              #@lifts = Lift.find(:all, :order => 'created_at') 
                              @lifts=current_user.lifts(:page => params[:page], :include => [:exercise => :muscle])
                              #@exercises = Exercise.all
                              @exercises = current_user.exercises
                              @muscles = Muscle.all
                              respond_to do |format|
                                format.html
                                format.xml  { render :action => "triceps-percent.xml.builder", :layout => false }
                              end
                            end              
                
                
end