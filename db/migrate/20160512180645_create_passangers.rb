class CreatePassangers < ActiveRecord::Migration
  def change
    create_table :passangers do |t|
      t.integer :booking_id
      t.string :name
      t.string :email

      t.timestamps null: false
    end

    add_index :passangers, :booking_id
  end
end
