#!/usr/bin/env ruby

require_relative './cards.rb'

class Card
  include Cards
	
  attr_accessor :card

	def initialize 
  end
end

class Player
	attr_accessor :hand
end

deck = []

Cards::CARDS[:suit].each do | suit, name_and_value_hash | 
  name_and_value_hash.each {| card_name, value | deck << "#{card_name} (#{value}) of #{suit}" }
end

deck.shuffle!




