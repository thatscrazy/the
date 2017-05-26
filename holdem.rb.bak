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
		sorted_hand.uniq!
    puts sorted_hand
    puts "###"
		@msg = "no msg"
		count = 1
		straight_count = 1 
		sorted_hand.each do | card |
			if card == sorted_hand[-1] && straight_count <= 4
				puts "last card, break"
				break
			end
			if straight_count >= 5 && ( ( card + 1 == sorted_hand[count] ) || card == sorted_hand[-1] )
					puts "BIG MATCH"
					straight_count += 1
					puts "straight_count: #{straight_count}"

					if card == sorted_hand[6]
						@msg = "#{sorted_hand[6]} high straight, last card"
					elsif card == sorted_hand[5]
						@msg = "#{sorted_hand[5]} high straight, second to last card "
					elsif card == sorted_hand[4]
						@msg = "#{sorted_hand[4]} high straight, third to last card"
					end
			elsif card + 1 == sorted_hand[count] 
				straight_count += 1
				puts "match"
			else
				straight_count = 1
			end
		count += 1
		end

		if straight_count >= 5
			puts @msg
			return true
		end
	end

	def self.flush?
	end

end

