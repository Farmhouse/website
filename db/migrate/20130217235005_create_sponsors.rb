class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :slug
      t.string :url

      t.timestamps
    end
  end
end
