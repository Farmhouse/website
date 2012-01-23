class CreateConfs < ActiveRecord::Migration
  def change
    create_table :confs do |t|
      t.string :name
      t.string :subtitle
      t.integer :year
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :location_id
      t.string :twitter

      t.timestamps
    end
  end
end
