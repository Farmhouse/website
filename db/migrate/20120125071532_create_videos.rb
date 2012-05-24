class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :conf_id
      t.integer :talk_id
      t.text :caption
      t.string :videographer
      t.string :ogv
      t.string :mp4
      t.string :youtube
      t.string :canonical_url
      t.string :poster_frame_url

      t.timestamps
    end
  end
end
