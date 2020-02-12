class RoomsController < ApplicationController
    def index 
        rooms = Room.all
        render json: rooms
    end 

    def show 
        room = Room.find(params_id)
        render json: room
    end 

    def create
        room = Room.new(room_params)
        if room.valid?
            room.save
        end 

        render json: room

    end 

    private 

    def room_params
        params.require(:room).permit(
            :user_id,
            :name,
            :maxCapacity
        )
    end 
end
