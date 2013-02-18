class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :conf_id
      t.integer :sponsor_id
      t.string :level

      t.timestamps
    end
  end
end
