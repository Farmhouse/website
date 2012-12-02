class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.datetime :published_at
      t.integer  :episode, :season
      t.string   :authors,
                 :duration,
                 :enclosure_length,
                 :itunes_summary,
                 :keywords,
                 :subtitle,
                 :summary,
                 :title,
                 :url
      t.text     :show_notes

      t.timestamps
    end
  end
end
