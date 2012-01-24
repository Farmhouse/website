class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_address
      t.string :extended_address
      t.belongs_to :region
      t.string :locality
      t.string :postal_code
      t.belongs_to :country

      t.timestamps
    end
  end
end
