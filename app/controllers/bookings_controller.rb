class BookingsController < ApplicationController

  require 'booking_adapter'
  require 'bookings_logger'
 
  
  #before_action :authenticate_user!
  #before_action :ensure_admin, :only => [:edit, :destroy, :new]
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # OOB_URI = 'urn:ietf:wg:oauth:2.0:oob'.freeze
  # APPLICATION_NAME = 'TimeTable'.freeze
  # CREDENTIALS_PATH = 'credentials.json'.freeze
  # # The file token.yaml stores the user's access and refresh tokens, and is
  # # created automatically when the authorization flow completes for the first
  # # time.
  # TOKEN_PATH = 'token.yaml'.freeze
  # SCOPE = Google::Apis::ClassroomV1::AUTH_CLASSROOM_COURSES_READONLY

  # def authorize
  #   client_id = Google::Auth::ClientId.from_file(CREDENTIALS_PATH)
  #   token_store = Google::Auth::Stores::FileTokenStore.new(file: TOKEN_PATH)
  #   authorizer = Google::Auth::UserAuthorizer.new(client_id, SCOPE, token_store)
  #   user_id = 'default'
  #   credentials = authorizer.get_credentials(user_id)
  #   if credentials.nil?
  #     url = authorizer.get_authorization_url(base_url: OOB_URI)
  #     puts 'Open the following URL in the browser and enter the ' \
  #         "resulting code after authorization:\n" + url
  #     code = gets
  #     credentials = authorizer.get_and_store_credentials_from_code(
  #       user_id: user_id, code: code, base_url: OOB_URI
  #     )
  #   end
  #   credentials
  # end
  
  # service = Google::Apis::ClassroomV1::ClassroomService.new
  # service.client_options.application_name = APPLICATION_NAME
  # service.authorization = authorize


   # def ensure_admin
  #   unless current_user && current_user.admin?
  #   render :text => "Access Error Message", :status => :unauthorized
  #   end
  # end
  
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
  
  
    #@description = "A Booking was created: "+ [@booking.email, @booking.room.name, @booking.subject.classname, @booking.date, @booking.starttime, @booking.duration, @booking.status, @booking.supervision].to_s + "by "
    b = BookingAdapter.new(@booking).printer
    BookingsLogger.instance.logBookings(b)

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
    #@description = "A Booking was updated: "+ [@booking.email, @booking.room.name, @booking.subject.classname, @booking.date, @booking.starttime, @booking.duration, @booking.status, @booking.supervision].to_s 
    BookingsLogger.instance.logBookings(@booking.details("updated"))

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

  
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:email, :room_id, :subject_id, :date, :starttime, :duration, :status, :supervision, :course_id)
    end

end
