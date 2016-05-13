class PassengerMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(booking)
		@booking = booking
		@url = "http://localhost:3000/#{booking_path(booking)}"
		@email = @booking.passangers.first.email
		mail(to: @email, subject: "Thanks for using flight out services!")
	end
end
