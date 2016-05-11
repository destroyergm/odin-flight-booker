class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
    	t.integer :from_airport
    	t.integer :to_airport
    	t.datetime :datetime
    	t.integer :duration

      t.timestamps null: false
    end
  end
end
