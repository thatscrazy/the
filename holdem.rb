module HoldEm
	def dealer(deck)
		#deal deck according to holdem rules
	end
	
	def self.straight_flush? hand
		if HoldEm.straight?(hand) && flush?(hand)
			true
		else
			false
		end
	end

	def self.straight? hand
		#hand.sort
		hand.each {|n| p n[1] }
			end

	def self.flush?
	end

end

