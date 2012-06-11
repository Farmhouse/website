class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string :your_name, :your_email, :your_phone, :your_twitter
      t.string :project_twitter, :project_budget, :project_title
      t.text :your_bio, :project_description
      t.date :project_starts_on, :project_ends_on

      t.timestamps
    end
  end
end
