class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :authors
      t.string :duration
      t.string :enclosure_length
      t.integer :episode
      t.string :itunes_summary
      t.string :keywords
      t.datetime :published_at
      t.integer :season
      t.string :subtitle
      t.string :summary
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
