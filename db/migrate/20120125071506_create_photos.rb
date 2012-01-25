class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :conf_id
      t.integer :talk_id
      t.text :caption
      t.string :photographer
      t.string :url
      t.string :canonical_url

      t.timestamps
    end
  end
end
