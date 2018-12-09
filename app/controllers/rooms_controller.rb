class RoomsController < ApplicationController
  require 'rooms_decorator'
  before_action :authenticate_user!
  #before_action :ensure_admin, :only => [:edit, :destroy, :new]
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  
  
  
  # def ensure_admin
  #   unless current_user && current_user.admin?
  #     render :text => "Access Error Message", :status => :unauthorized
  #   end
  # end

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)
    @name = params[:room][:name]
    @floor = params[:room][:floor].to_s
    @seating = params[:room][:seating].to_s
    myRoom = BasicRoom.new(@room.name, @room.floor, @room.seating, @room)
    if params[:room][:projector].to_s.length > 0 then
      myRoom = RoomWithProjector.new(myRoom)
    end
    
    if params[:room][:computers].to_s.length > 0 then
      myRoom = RoomWithComputer.new(myRoom)
    end
    if params[:room][:Audio_enhancements].to_s.length > 0 then
      myRoom = RoomWithAudioEnhancements.new(myRoom)
    end
    
    @room.description = myRoom.details
    
    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def upload
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:name, :floor, :seating)
    end
end
