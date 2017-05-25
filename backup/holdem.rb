module HoldEm
  require './cards.rb'  
  attr_reader :high_card, :hand
  def self.hand(hand)
    if is_flush?(hand)
      @hand = :flush
      puts "Is a #{@high_card} high flush"
			return :flush
		elsif is_straight?(hand)
			puts "you have a straight from ... "			
    else
      puts "High card: #{@high_card}"
      return @high_card
    end
  end

  private 
	
	def high_card(hand) #### NEED TO ADD NEXT HIGHEST CARD FOR TIES
	  high_card = hand.sort.pop
    @high_card = Cards::CARDS.key(high_card)
	end
### NEED ### TO ### FINISH VVVVVVV ###
  def self.is_flush?(hand)
		num_of_spades = 0
    hand.each do | card |
			puts Cards::CARDS.key(card)
    	if Cards::CARDS.key(card) =~ /spades/
				num_of_spades += 1
			end
		end
    if num_of_spades == 5
			return true
		else
			return false
    end
  end
###########################3 FINISH THE ABOVE ^^^^

  def self.is_straight?(hand)
		card1 = hand.shift.to_s.chars
    puts card1

#		@hand = hand
#  	order_counter = 0
#    hand[0...3].each do | card |
#			@card = card / 10
#			puts "@card = #{card}: expecting 1 digit value"
#			5.times do | i |
#				next_card = @card + i
#				puts "next_card #{next_card}"
#				if next_card  == @hand[next_card]
#					order_count += 1
#					puts "match"
#				end
#			end
#		end
#		
#		if order_counter == 5
#			return true
#		else
#			return false
#		end		
  end  
end
