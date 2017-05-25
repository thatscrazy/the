#!/usr/bin/env ruby

SUITS = {
}
  
CARD_VALUES = { 
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
  "J" => 11,
  "Q" => 12,
  "K" => 13,
  "A" => 14			
}

HAND_VALUES = {
  "High" => 1,
  "Pair" => 2,
  "Two-Pair" => 3,
  "Three-of-a-kind" => 4,
  "Straight" => 5,
  "Flush" => 6,
  "Full House" => 7,
  "Four-of-a-kind" => 8,
  "Straight-flush" => 9 
}

#SUITS.each { | suit | puts suit }
#
#CARD_VALUES.each do | card, value |
#  puts "Card is #{card}, value is #{value}"
#  puts "Classes: #{card.class}, #{value.class}"
#end

# how to figure out the value of a hand ?
# what types of hands are there, and what is the value of each?

#puts HAND_VALUES["High"] # print the hand value
class Hands
end 

class Hand < Hands 
  attr_reader :hand

  def initialize *cards, board #take in the two hole cards as individual objets, then the board array
    @cards = cards
    create_hand
  end

  private 

  def create_hand 
    sort_hand_by_value 
  end

  def sort_hand_by_value
    @values = []
    @cards.each do | card |
      @values << card.value
    end
    @values.sort.each_with_index { | value, index | puts "Card number #{index} has a value of #{value}" }
  end
end

class Cards
end


class Card < Cards
  attr_accessor :suit, :value

  def initialize suit, value
    @suit = suit
    @value = value
  end
end

card1 = Card.new("spades", 6)
card2 = Card.new("hearts", 3)

puts "card1 suit is #{card1.suit} and it's value is #{card1.value}"
puts "card2 suit is #{card2.suit} and it's value is #{card2.value}"
 
Hand.new card1, card2


