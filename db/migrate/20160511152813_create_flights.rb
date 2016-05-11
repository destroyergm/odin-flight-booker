class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
    	t.integer :from_airport_id
    	t.integer :to_airport_id
    	t.datetime :datetime
    	t.integer :duration

      t.timestamps null: false
    end

    add_index :flights, :from_airport_id
    add_index :flights, :to_airport_id
  end
end
