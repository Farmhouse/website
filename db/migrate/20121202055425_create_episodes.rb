class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.datetime :published_at
      t.integer  :episode, :season
      t.string   :authors,
                 :duration,
                 :enclosure_length,
                 :subtitle,
                 :title

      t.text     :show_notes,
                 :summary,
                 :itunes_summary,
                 :url,
                 :keywords

      t.timestamps
    end
  end
end
