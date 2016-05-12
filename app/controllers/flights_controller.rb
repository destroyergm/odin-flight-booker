class FlightsController < ApplicationController
	include FlightsHelper

	def index
		if params_exist?
			from_airport = params[:search][:airports_from]
			to_airport = params[:search][:airports_to]
			date = params[:search][:date]
			@result = Flight.from_to(from_airport, to_airport).filter_date(date)
		end
		@airports = Airport.all
		@flights = Flight.all
	end

end
