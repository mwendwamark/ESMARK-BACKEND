class CreateTenants < ActiveRecord::Migration[7.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :house_number
      t.string :house_type
      t.string :phone_number
      t.integer :id_number
      t.string :occupation
      t.integer :rent
      t.string :next_of_kin_name
      t.string :next_of_kin_phone
      t.string :password_digest

      t.timestamps
    end
  end
end
