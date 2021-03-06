class CreateFlexiShippingRates < ActiveRecord::Migration
  def change
    create_table :flexi_shipping_rates do |t|
      t.references :shipping_category
      t.references :zone
	    t.decimal :first_item_price, :precision => 8, :scale => 2
	    t.decimal :additional_item_price, :precision => 8, :scale => 2
	    t.integer :max_items, :default => 0
	    
      t.timestamps
    end
  end
end

