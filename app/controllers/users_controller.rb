class UsersController < ApplicationController
  def index
    @users = User.all
    @cuemail = current_user.email
    @userbookings = Booking.find_by( email: @cuemail)
    
  end
  def show
    @user = User.find(params[:id])
    @name = @user.firstname
  end
end
