#!/usr/bin/env ruby

require_relative './games.rb'
require_relative './cards.rb'

class Game
	include Games
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

	attr_reader :show_deck

	def initialize
		create_deck
	end
end


game = Game.new(5)

deck = Deck.new

puts deck.show_deck
