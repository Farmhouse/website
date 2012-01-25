class CreatePeopleTalks < ActiveRecord::Migration
  def change
    create_table :people_talks, :id => false do |t|
      t.belongs_to :person
      t.belongs_to :talk
    end
  end
end
