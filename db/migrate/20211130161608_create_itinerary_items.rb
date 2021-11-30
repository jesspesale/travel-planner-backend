class CreateItineraryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :itinerary_items do |t|
      t.integer :trip_id
      t.string :description

      t.timestamps
    end
  end
end
