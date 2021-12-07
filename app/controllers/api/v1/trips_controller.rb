class Api::V1::TripsController < ApplicationController

    def index 
        @trips = Trip.all
        render json: @trips
# @trips will be sent back to front end as a responcse to our fetch req is made
    end

    def create
        # binding.pry
        @trip = Trip.new(trip_params)
        if @trip.save
            render json: @trip
            #if the trip is saved, send that new account info to our front end
        else
            render json: {error: "Error creating a trip"}
        end
    end

    def show 
        @trip = Trip.find(params[:id])
        render json: @trip
    end

    def destroy 
        @trip = Trip.find(params[:id])
        @trip.destroy
    end


    private

    def trip_params 
        params.require(:trip).permit(:destination, :start_date, :end_date)
    end
end
