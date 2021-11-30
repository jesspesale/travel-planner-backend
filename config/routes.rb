Rails.application.routes.draw do

namespace :api do
    namespace :v1 do
      resources :trips do
        resources :itinerary_items
        resources :packing_items
        #can only access itinerary/packing items nested in a trip id
      end
    end
  end
end



# fetch('http://localhost::3000')
# fetch('http://localhost::3000/api/v1/trips')
# fetch('http://localhost::3000/api/v1/trips/1/packing_items')