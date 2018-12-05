class SearchController < ApplicationController
  def index
    if params[:commit] && params[:name] !=""
      
      #tmp = Room.find_by_name(params[:name])
      #@rooms = Booking.find_by_name('jack').accounts.where(:bank_id => bank.id)
      @rooms = Booking.includes(:room).where(:rooms => {name: params[:name]}).references(:room)
    else
      @rooms = Booking.all
    end
  end
  
end
