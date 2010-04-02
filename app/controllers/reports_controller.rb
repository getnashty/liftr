class ReportsController < ApplicationController
  before_filter :authenticate


  def export
      width = params[:width].to_i
      height = params[:height].to_i
      data = {}
       height.times do |y|
         if params["r#{y}"]
           row = params["r#{y}"].split(%r{,\s*})
         end
         row.size.times do |r|
           if row[r]
             pixel = row[r].to_s.split(':')
           end
           pixel[0] = pixel[0].to_s.rjust(6,'0')
           if pixel.size == 2
             pixel[1].to_i.times do
               (data[y] ||= []) << pixel[0]
             end
           else
             (data[y] ||= []) << pixel[0]
           end
         end
       end

       img =  Magick::Image.new(width , height )
       q = Array.new
       width.times do
         q << Magick::Pixel.new(0,0,0,0)
       end
       height.times do |y|
         width.times do |x|
      q[x].red   = data[y][x][0..1].hex
      q[x].green = data[y][x][2..3].hex
      q[x].blue  = data[y][x][4..5].hex
         end
         img.store_pixels(0, y, width, 1, q)
       end

       img.format = "PNG"

       send_data(img.to_blob , :disposition => 'inline', :type => 'image/png', :filename => "chart.png?#{rand(99999999).to_i}")

    end

def progress
    @lifts = Lift.find(:all, :order => 'created_at') 
    @exercises = Exercise.all
    @progress_data_link = formatted_progress_reports_url(:xml)
    respond_to do |format|
      format.html
      format.xml  { render :action => "progress.xml.builder", :layout => false }
    end
  end
  
end