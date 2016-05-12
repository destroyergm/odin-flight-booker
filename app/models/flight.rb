class Flight < ActiveRecord::Base
	scope :filter_date, -> (date) { Flight.where("date(datetime) = ?", date.to_date) }
	scope :from_to, -> (from_id, to_id) { 
		Flight.where("from_airport_id = :from_airport AND to_airport_id = :to_airport",
			from_airport: from_id, to_airport: to_id) }

	belongs_to :from_airport,
		class_name: 'Airport'
	belongs_to :to_airport,
		class_name: 'Airport'
	
	has_many :bookings
end
