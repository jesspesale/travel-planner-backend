class Api::V1::ItineraryItemsController < ApplicationController

    before_action :find_trip

    def index 
        @itinerary_items = @trip.itinerary_items
        render json: @itinerary_items
    end

    def create
        @itinerary_item = @trip.itinerary_items.build(itinerary_item_params)
        # @itinerary_item = @trip.itinerary_items.new(itinerary_item_params)
        render json: @itinerary_item
    end

    def show 
        @itinerary_item = @trip.itinerary_items.find_by(id: params[:id])
        render json: @itinerary_item
    end

    def destroy 
        @itinerary_item = @trip.itinerary_items.find_by(id: params[:id])
        @itinerary_item.destroy
    end


    private

    def find_trip
        @trip = Trip.find(params[:trip_id])
    end

    def itinerary_item_params 
        params.require(:itinerary_item).permit(:description, :trip_id)
    end

end
