class CreatePeopleWebsites < ActiveRecord::Migration
  def change
    create_table :people_websites, :id => false do |t|
      t.belongs_to :person
      t.belongs_to :website
    end
  end
end
