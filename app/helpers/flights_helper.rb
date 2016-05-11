module FlightsHelper
		def params_exist?
			if !params[:search].blank?
				return true
			else
				return false
			end
	end
end
