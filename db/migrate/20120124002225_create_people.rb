class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, :image, :slug
      t.text :bio
      t.boolean :staff, :organizer

      t.timestamps
    end
  end
end
