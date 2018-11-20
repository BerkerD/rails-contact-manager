class CreateEmailAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :email_addresses do |t|
      t.string :address
      t.integer :person_id

      t.timestamps
    end
  end
end
