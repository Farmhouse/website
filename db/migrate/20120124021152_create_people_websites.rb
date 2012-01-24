class CreatePeopleWebsites < ActiveRecord::Migration
  def change
    create_table :people_websites do |t|
      t.integer :person_id
      t.integer :website_id

      t.timestamps
    end
  end
end
