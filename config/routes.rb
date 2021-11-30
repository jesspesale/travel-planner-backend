Rails.application.routes.draw do

namespace :api do
    namespace :v1 do
      resources :itinerary_items
      resources :packing_items
      resources :trips
     end
  end
end



# fetch('http://localhost::3000')
# fetch('http://localhost::3000/api/v1/trips')