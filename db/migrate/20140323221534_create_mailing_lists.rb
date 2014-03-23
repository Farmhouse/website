class CreateMailingLists < ActiveRecord::Migration
  def change
    create_table :mailing_lists do |t|
      t.text :email

      t.timestamps
    end
  end
end
