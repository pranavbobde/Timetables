class BookingsController < ApplicationController
  
  require 'bookings_logger'
  
  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
#for logging the information
  
  @useremail = current_user.email
  
    @description = "A Booking was created: "+ [@booking.email, @booking.room.name, @booking.subject.classname, @booking.date, @booking.starttime, @booking.duration, @booking.status, @booking.supervision].to_s + "by " + @useremail
    BookingsLogger.instance.logBookings(@description)

    

  
   
    
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
    #for logging the information
    @booking.email = params[:booking][:email]
    @booking.room_id = params[:booking][:room_id]
    @booking.subject_id = params[:booking][:subject_id]
    @booking.date = params[:booking][:date]
    @booking.starttime = params[:booking][:starttime]
    @booking.duration = params[:booking][:duration]
    @booking.status = params[:booking][:status]
    @booking.supervision = params[:booking][:supervision]
    @description = [@booking.email, @booking.room_id, @booking.subject_id, @booking.date, @booking.starttime, @booking.duration, @booking.status, @booking.supervision].to_s
    logger = BookingsLogger.instance
    logger.logBookings("A Booking was updated" + @description.to_s)
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:email, :room_id, :subject_id, :date, :starttime, :duration, :status, :supervision)
    end
end
