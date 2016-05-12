
# Create test airports
Airport.create(code: "NYC")
Airport.create(code: "SRB")
Airport.create(code: "CHI")
Airport.create(code: "SFO")
Airport.create(code: "PAR")

# Create test flights
Flight.create(from_airport_id: 1, to_airport_id: 2, 
	datetime: "18:15 12/5/2016", duration: 2)
Flight.create(from_airport_id: 1, to_airport_id: 2, 
	datetime: "18:30 12/5/2016", duration: 2)
Flight.create(from_airport_id: 1, to_airport_id: 2, 
	datetime: "18:45 12/5/2016", duration: 2)
Flight.create(from_airport_id: 1, to_airport_id: 2, 
	datetime: "19:00 12/5/2016", duration: 2)
Flight.create(from_airport_id: 1, to_airport_id: 2, 
	datetime: "20:00 12/5/2016", duration: 2)
Flight.create(from_airport_id: 1, to_airport_id: 3, 
	datetime: "20:30 12/5/2016", duration: 1)
Flight.create(from_airport_id: 1, to_airport_id: 4, 
	datetime: "21:30 12/5/2016", duration: 3)
Flight.create(from_airport_id: 1, to_airport_id: 5, 
	datetime: "05:00 12/5/2016", duration: 3)

Flight.create(from_airport_id: 2, to_airport_id: 3, 
	datetime: "18:00 14/3/2016", duration: 1)
Flight.create(from_airport_id: 2, to_airport_id: 4, 
	datetime: "18:00 15/3/2016", duration: 12)
Flight.create(from_airport_id: 2, to_airport_id: 5, 
	datetime: "18:35 15/3/2016", duration: 7)
Flight.create(from_airport_id: 5, to_airport_id: 1, 
	datetime: "07:00 18/3/2016", duration: 2)
Flight.create(from_airport_id: 1, to_airport_id: 2, 
	datetime: "06:15 22/7/2016", duration: 1)
Flight.create(from_airport_id: 2, to_airport_id: 3, 
	datetime: "23:30 30/1/2016", duration: 3)
Flight.create(from_airport_id: 3, to_airport_id: 2, 
	datetime: "18:00 12/5/2016", duration: 6)
