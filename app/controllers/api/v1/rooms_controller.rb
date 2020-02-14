class Api::V1::RoomsController < ApplicationController
    before_action :set_room, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:create]
  
    def index
      @rooms = Room.all
  
      render json: @rooms
    end
  
    def show
      render json: @room
    end
  
    def create
      @todo = Room.new(room_params)
  
      if @room.save
        render json: @room, status: :created, location: @room
      else
        render json: @room.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @room.update(room_params)
        render json: @room
      else
        render json: @room.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @room.destroy
    end
  
    private
      def set_room
        @room = Room.find(params[:id])
      end
  
      def room_params
        params.require(:room).permit(
                    :user_id,
                    :name,
                    :maxCapacity
                )
      end

end
