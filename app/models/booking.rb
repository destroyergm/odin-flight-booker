class Booking < ActiveRecord::Base
	has_many :passangers
	belongs_to :flight
	accepts_nested_attributes_for :passangers

	validates :flight_id, presence: true
end
