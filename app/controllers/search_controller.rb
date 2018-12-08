class SearchController < ApplicationController
  def index
    
   
    @mydate = Date.today
    @rooms = Booking.all.where("date >= ?", @mydate)

    if params[:date]
      @mydate  = Date.civil(params[:date]["date(1i)"].to_i,params[:date]["date(2i)"].to_i,params[:date]["date(3i)"].to_i)
      @rooms = Booking.all.where("date = ?", @mydate)
    end
    
    @room_arr = {}
    @subject_arr = {}
    @course_arr = {}
    
    
    if params[:commit]
      if params[:room_id] !=""
        @room_arr = Booking.includes(:room).where(:rooms => {id: params[:room_id]}, date: @mydate).references(:room)
      end
      
      if params[:subject_id] !=""
        @subject_arr = Booking.includes(:subject).where(:subjects => {id: params[:subject_id]}, date: @mydate).references(:subject)
      end
      
      if params[:course_id] !=""
        @course_arr = Booking.includes(:course).where(:courses => {id: params[:course_id]}, date: @mydate).references(:course)
      end
      @rooms.merge!(@room_arr).merge!(@subject_arr).merge!(@course_arr)
    
      
    end
    
    #if params[:commit]
    #   if params[:room_id] !="" and params[:subject_id] !=""
          

    #     #tmp = Room.find_by_name(params[:name])
    #     #@rooms = Booking.find_by_name('jack').accounts.where(:bank_id => bank.id)
    #     @rooms = Booking.includes(:room, :subject).where(:rooms => {id: params[:room_id]}, :subjects => {id: params[:subject_id]}, date: @mydate).references(:room, :subject)
      
    #   elsif params[:room_id] !="" and params[:subject_id] =""
    #     @rooms = Booking.includes(:room).where(:rooms => {id: params[:room_id]}, date: @mydate).references(:room)

    
    #   elsif params[:room_id] ="" and params[:subject_id] !=""
      
    #     @rooms = Booking.includes(:subject).where(:subjects => {id: params[:subject_id]}, date: @mydate).references(:subject)

    #   else
    #     print "I ran"
    #     @rooms = Booking.all.where(date: @mydate)
    #   end
    # else 
    #   @rooms = Booking.all.where("date >= ?", Date.today)
    # end
    

  
  end 
  
  
  
  def free
    @test = "10"
  
  end
end
