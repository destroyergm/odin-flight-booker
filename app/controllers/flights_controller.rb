class FlightsController < ApplicationController
	include FlightsHelper

	def index
		if params_exist?
			@query = Airport.first
		end
		@airports = Airport.all
		@flights = Flight.all
	end

end
