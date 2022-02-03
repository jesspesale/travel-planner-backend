class CreatePackingItems < ActiveRecord::Migration[6.1]
  def change
    create_table :packing_items do |t|
      t.integer :trip_id
      t.string :item

      t.timestamps
    end
  end
end
