class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :conf_id
      t.integer :talk_id
      t.string :title
      t.string :subtitle
      t.string :url
      t.string :author
      t.text :snippet
      t.datetime :published_at

      t.timestamps
    end
  end
end
