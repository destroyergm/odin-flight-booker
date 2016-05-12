class BookingsController < ApplicationController
	def new
		@flight = Flight.find(params[:flight][:flight_id])
		@booking = @flight.bookings.build
		@passanger_count = params[:flight][:passangers].to_i

		@passanger_count.times { @booking.passangers.build }
	end

	def create
		@booking = Booking.create(booking_params)

		number_of_booking = passangers_params[:passangers_attributes].keys.count
		number_of_booking.times do |index|
			passanger_params = passangers_params[:passangers_attributes]["#{index}"]
			p = @booking.passangers.build(passanger_params)
			p.save
		end

		redirect_to @booking
	end

	def show
		@booking = Booking.find(params[:id])
	end

	private

	def passangers_params
		params.require(:booking).permit(passangers_attributes: [:name, :email])
	end

	def booking_params
		params.require(:booking).permit(:flight_id)
	end

end
