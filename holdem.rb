module HoldEm

	def self.straight_flush? hand
		if HoldEm.straight?(hand) && flush?(hand)
			true
		else
			false
		end
	end

	def self.straight? hand
		
	end

	def self.flush?
	end

end

