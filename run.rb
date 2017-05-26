#!/usr/bin/env ruby

require_relative './holdem.rb'
require_relative './cards.rb'

class Game
	include HoldEm
	attr_accessor :total_players
	def initialize(players)
		unless players.to_s =~ /[2-9]/
			raise "Must be a number, and between 2 and 9"
			exit
		else
		  @total_players = players.to_i
		end
	end
end	

class Deck
	include Cards
	def initialize
		create_deck
	end
end


game = Game.new(5)

deck = Deck.new
#puts deck.show_deck
deck.shuffle
# deck.show_deck.each {|n| puts "\"#{n}\","}

hand = []

7.times { hand << deck.show_deck.shift }
hand.sort
#puts hand
HoldEm.straight?(hand)













