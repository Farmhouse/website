class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :bio
      t.string :image
      t.boolean :staff
      t.boolean :organizer

      t.timestamps
    end
  end
end
