class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_address
      t.string :extended_address
      t.string :region
      t.string :locality
      t.string :postal_code
      t.integer :country_name

      t.timestamps
    end
  end
end
