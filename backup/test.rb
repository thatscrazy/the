#!/usr/bin/env ruby

require_relative 'cards.rb'

class Hand 
  attr_accessor :hand

  def initialize cards
    if cards.count != 5
      puts "Error, hand should be array of 5 cards"
    else
      @cards = cards
      create_hand
    end
  end
  
  def create_hand
    @hand = @cards.sort  
	end
end

class Card
  include Cards
  attr_reader :card, :value

  def initialize card
    @card = Cards::CARDS[card]
    @value = @card
  end
end

card1 = Card.new(:two_of_clubs)
card2 = Card.new(:three_of_spades)
card3 = Card.new(:four_of_spades)
card4 = Card.new(:two_of_hearts)
card5 = Card.new(:three_of_hearts)

#puts card1.card
#puts card2.card
#puts card3.card
#puts card4.card
#puts card5.value
 
p1_cards = [ card1.card, card2.value, card3.value, card4.value, card5.value ]

p1_hand = Hand.new(p1_cards)

puts p1_hand.hand


