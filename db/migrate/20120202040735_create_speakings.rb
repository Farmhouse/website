class CreateSpeakings < ActiveRecord::Migration
  def change
    create_table :speakings do |t|
      t.belongs_to :talk
      t.belongs_to :person
      t.timestamps
    end
  end
end
