#!/usr/bin/env ruby

require_relative './cards.rb'
require_relative './hand_check.rb'

class Card
  include Cards
	
  attr_accessor :card

	def initialize 
  end
end

class Player
	attr_accessor :hand
	
	def initialize
		@hand = []
	end
end

deck = []

Cards::CARDS[:suit].each do | suit, name_and_value_hash | 
  name_and_value_hash.each {| card_name, value | deck << "#{card_name} (#{value}) of #{suit}" }
end

deck.shuffle!
 
player1 = Player.new
player2 = Player.new

players = [ player1, player2 ]

until players[-1].hand.count == 2 
	players.each do | player |
		player.hand << deck.shift
	end
end

puts player1.hand
puts player2.hand


