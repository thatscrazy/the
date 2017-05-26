module HoldEm
	def dealer(deck)
		#deal deck according to holdem rules
	end
	
	def self.straight_flush? hand
		if HoldEm.straight?(hand) && HoldEm.flush?(hand)
			true
		else
			false
		end
	end

	def self.straight? hand
		sorted_hand = []
		hand.each {|n| sorted_hand << (n[1].to_i) }
		sorted_hand.sort!
		sorted_hand.uniq!
    puts sorted_hand
		
		first_five = sorted_hand[0..4]
		middle_five = sorted_hand[1..-2]
		if middle_five.count < 5
			middle_five = sorted_hand[1..-1]
    end
		last_five = sorted_hand[2..-1]
		if last_five.count < 5
			last_five = middle_five
		end
		
		first_five_count = 0 
		first_five_straight_count = 1
		first_five.each do | card |
			if card + 1 == first_five[(first_five_count + 1)]
					first_five_straight_count += 1
			end
			first_five_count += 1
		end

		if first_five_straight_count == 5
			puts "!first five straight"
		end
		return true
	end

	def self.flush?
		return true
	end

end

