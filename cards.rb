module Cards
	DECK = {
		SUIT: {
			SPADES:  {  two:   2,
								  three: 3,
									four:	 4,
									five:  5,
									six:   6,
									seven: 7,
									eight: 8,
									nine:  9,
									ten:   10,
									jack:  11,
									queen: 12, 
									king: 13,
									ace: 	14
			},
		
			HEARTS:  {  two:   2,
								  three: 3,
									four:	 4,
									five:  5,
									six:   6,
									seven: 7,
									eight: 8,
									nine:  9,
									ten:   10,
									jack:  11,
									queen: 12, 
									king: 13,
									ace: 	14
			},
	
			CLUBS:  {  two:   2,
								  three: 3,
									four:	 4,
									five:  5,
									six:   6,
									seven: 7,
									eight: 8,
									nine:  9,
									ten:   10,
									jack:  11,
									queen: 12, 
									king: 13,
									ace: 	14
			},
	
			DIAMONDS: { two:   2,
								  three: 3,
									four:	 4,
									five:  5,
									six:   6,
									seven: 7,
									eight: 8,
									nine:  9,
									ten:   10,
									jack:  11,
									queen: 12, 
									king: 13,
									ace: 	14
			}
		}
  }	

	def create_deck
		@deck = []
		Cards::DECK[:SUIT].each do | suit, name_and_value |
			name_and_value.each { | card_name, value | @deck << "#{card_name}(#{value}) of #{suit}" }
		end 
	end
	def show_deck
		return @deck
	end	
	def shuffle
		@deck = @deck.shuffle
	end
end
