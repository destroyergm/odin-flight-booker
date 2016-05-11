require 'test_helper'

class AirportTest < ActiveSupport::TestCase
  
  def setup
  	@airport = Airport.new(code: "FOO")
  end

  test 'should be valid' do
  	assert @airport.valid?
	end

	test 'should require code field' do
		@airport.code = "   "
		assert_not @airport.valid?
	end
end
