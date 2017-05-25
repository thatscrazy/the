#!/usr/bin/env ruby

module Cards
  attr_reader :hand 

  CARDS = {
    two_of_spades: 20,
    two_of_hearts: 21,
    two_of_clubs: 23,
    two_of_diamonds: 27,
    three_of_spades: 30,
    three_of_hearts: 31,
    three_of_clubs: 33, 
    three_of_diamonds: 37,
    four_of_spades: 40,
    four_of_hearts: 41,
    four_of_clubs: 43,
    four_of_diamonds: 47,
    five_of_spades: 50,
    five_of_hearts: 51,
    five_of_clubs: 53,
    five_of_diamonds: 57,
    six_of_spades: 60,
    six_of_hearts: 61,
    six_of_clubs: 63,
    six_of_diamonds: 67,
    seven_of_spades: 70,
    seven_of_hearts: 71,
		seven_of_clubs: 73,
		seven_of_diamonds: 77,
    eight_of_spades: 80,
		eight_of_hearts: 81,
    eight_of_clubs: 83,
		eight_of_diamonds: 87,
		nine_of_spades: 90,
		nine_of_hearts: 91,
		nine_of_clubs: 93,
		nine_of_diamonds: 97,
		ten_of_spades: 100,
		ten_of_hearts: 101,
		ten_of_clubs: 103,
		ten_of_diamonds: 107
  }

  CARD_VALUES = CARDS.values
  CARD_NAMES = CARDS.keys
  @@deck = CARDS.values 
  
  class CardGame
    include Cards
  end

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

# begin test field


#class CardGame
#  include Cards
#end
#
#game1 = CardGame.new
#
#player1 = game1.create_hand(2)
#player2 = game1.create_hand(2)
#player3 = game1.create_hand(2)
#board = game1.create_hand(5)
#
#all_hands = player1 + player2 + player3 + board
#if all_hands.uniq.count != all_hands.count
#  raise "There are duplicate cards in this game!"
#  exit
#end
#
#
#puts "Player2 hand is #{player2} \n"
#puts "Player3 hand is #{player3} \n"
#puts "Board is #{board}"
#
#game1.shuffle
#
#player1 = game1.create_hand(2)
#player2 = game1.create_hand(2)
#player3 = game1.create_hand(2)
#board = game1.create_hand(5)
#
##puts Cards::CARDS[player1.each { | value | value }]
#puts "Player2 hand is #{player2} \n"
#puts "Player3 hand is #{player3} \n"
#puts "Board is #{board}"

#      sorted_hand.each { | value | text_hand << CARDS.key(value) }

