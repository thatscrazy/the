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
		
		first_five = sorted_hand[0..4]
		middle_five = sorted_hand[1..-2]
		if middle_five.count < 5
			middule_five = sorted_hand[1..-1]
    end
		last_five = sorted_hand[2..-1]
		if last_five.count < 5
			last_five = middle_five
		end
		
		puts "first_five: #{first_five}"
		first_five_count = 0 
		first_five_straight_count = 1
		first_five.each do | card |
			print "card "
			p card
			print "count "
			p first_five_count
			print "straight count "
			p first_five_straight_count
			print "card + count "
			p card + first_five_count
			print "first_five[(first_five_count + 1)] "
			p first_five[(first_five_count + 1)]
			puts
			p "###"
			if card + 1 == first_five[(first_five_count + 1)]
					first_five_straight_count += 1
			end
			first_five_count += 1
		end
		p first_five_straight_count

		if first_five_straight_count == 5
			puts "!first five straight"
		end
		puts "middle_five: #{middle_five}"
	
		puts "last_five: #{last_five}"
	end

	def self.flush?
	end

end

