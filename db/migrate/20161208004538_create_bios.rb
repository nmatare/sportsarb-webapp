class CreateBios < ActiveRecord::Migration[5.0]
  def change
    create_table :bios do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :address
      t.string :state
      t.integer :zipcode
      t.string :country
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
