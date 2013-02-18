class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :slug

      t.timestamps
    end
  end
end
