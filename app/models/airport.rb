class Airport < ActiveRecord::Base
	validates :code, presence: true, length: { maximum: 5 }
end
