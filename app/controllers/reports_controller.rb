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
      format.xml  { render :action => "percent.xml.builder", :layout => false }
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
  
  
end