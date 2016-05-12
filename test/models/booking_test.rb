require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  
	def setup
		@booking = Booking.new(flight_id: 1)
	end

	test "should be valid" do
		assert @booking.valid?
	end

	test "should require presence of flight_id" do
		@booking.flight_id = nil
		assert_not @booking.valid?
	end
end
