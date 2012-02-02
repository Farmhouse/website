class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.belongs_to :conf
      t.string :title, :subtitle, :slug
      t.text :description
      t.boolean :accepted, :keynote

      t.timestamps
    end
  end
end
