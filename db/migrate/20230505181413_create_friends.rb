class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :full_name
      t.string :phone
      t.string :twitter
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state_province
      t.string :country
      t.string :postal_code
      t.boolean :available_to_party
      t.string :timestamps

      t.timestamps
    end
  end
end
