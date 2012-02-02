class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :conf_id
      t.integer :talk_id
      t.string :url, :author, :twitter
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
  end
end
