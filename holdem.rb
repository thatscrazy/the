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
		sorted_hand = []
		hand.each {|n| sorted_hand << (n[1].to_i) }
		sorted_hand.sort!

		count = 0
		straight_count = 0 
		sorted_hand.each do | card |
			if card  == sorted_hand[count] 
				straight_count += 1
			else 
				straight_count = 0
			end
		count += 1
		end

		if straight_count >= 5
			puts "Straight!"
			return true
		end
	end

	def self.flush?
	end

end

