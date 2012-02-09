class CreateConfs < ActiveRecord::Migration
  def change
    create_table :confs do |t|
      t.string :name, :subtitle, :twitter, :registration_url, :registration_success_url, :registration_failure_url
      t.integer :year
      t.datetime :starts_at, :ends_at
      t.belongs_to :location

      t.timestamps
    end
  end
end
