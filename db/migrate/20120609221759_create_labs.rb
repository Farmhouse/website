class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string :name, :email, :title, :person_twitter, :project_twitter, :phone, :budget
      t.text :bio, :description
      t.date :starts_on, :ends_on

      t.timestamps
    end
  end
end
