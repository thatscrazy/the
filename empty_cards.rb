#!/usr/bin/env ruby

module Cards
  attr_reader :hand 

  CARDS = {
    two_of_spades: 212,
    two_of_hearts: 208,
    two_of_clubs: 204,
    two_of_diamonds: 200,
    three_of_spades: 312,
    three_of_hearts: 308,
    three_of_clubs: 304, 
    three_of_diamonds: 300,
    four_of_spades: 412,
    four_of_hearts: 408,
    four_of_clubs: 404,
    four_of_diamonds: 400,
    five_of_spades: 512,
    five_of_hearts: 508,
    five_of_clubs: 504,
    five_of_diamonds: 500,
    six_of_spades: 612,
    six_of_hearts: 608,
    six_of_clubs: 604,
    six_of_diamonds: 600
  }

  CARD_VALUES = CARDS.values
  CARD_NAMES = CARDS.keys
  @@deck = CARDS.values 

  def shuffle 
    @@deck = CARDS.values 
    puts "\n\n Shuffling deck! \n\n"
  end

  def create_hand(number_of_cards)
    #hand = {} 
    hand = []
     until hand.count == number_of_cards
        if number_of_cards > @@deck.count
          raise "There are not enough cards in the deck!"
          exit
        else
          card = @@deck.sample
        end
      if hand.include?(card) == false # does the hand array already contain this card value? 
 				#	hand << { CARDS.key(card) => card }
      	hand << card
        @@deck.delete(card)
      end
    end
    
    if hand.uniq.count != hand.count # protection against any flaws in above logic
      raise "Duplicate cards in same hand!"
      exit
    elsif hand.count != number_of_cards
      raise "The amount of cards in this hand does not equal 5!"
      exit
    else
      @hand = hand.sort_by { | key, value | value }
    end
  end
end


