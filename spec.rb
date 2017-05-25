#!/usr/bin/env ruby

require 'minitest/autorun'
require 'minitest/pride'

require_relative './run.rb'
require_relative './cards.rb'
require_relative './holdem.rb'

describe Game do
	describe "Total players" do
		it "should be an integer" do
			@game = Game.new(5)
			@game.total_players.must_be_instance_of Integer
		end

		it "must contain between 2 and 10 players" do
			assert_raises RuntimeError do
				Game.new(1)
			end 

			assert_raises RuntimeError do
				Game.new(10)
			end
			
			assert_raises RuntimeError do
				Game.new(0)
			end

			assert_raises RuntimeError do
				Game.new("n")
			end	
		end

	end
end

describe Cards do
	describe "They should have a total of 52" do
		class Deck
			include Cards

			def initialize
				create_deck
			end
		end

		deck = Deck.new
		it "is 52 cards before shuffling" do
		  length = deck.show_deck.count
			length.must_equal 52
		end
		
		it "is 52 cards after shuffling" do
			deck.shuffle
			length = deck.show_deck.count
			length.must_equal 52
		end
	end
end

describe HoldEm do
	describe "detect a straight flush" do
		it "will detect a sorted straight flush" do
			hand =  [	"2 (two) of SPADES",
								"3 (three) of SPADES",
								"4 (four) of SPADES",
								"5 (five) of SPADES",
								"6 (six) of SPADES"
						]
				
				assert HoldEm.straight_flush?(hand)
		
	 	end	
	end
	
	describe "detect four-of-a-kind" do
	end

	describe "detect a full house" do
	end

	describe "detect a flush" do
	end

	describe "detect a straight" do
	end

	describe "detect three-of-a-kind" do
	end

	describe "detect two-pair" do
  end

	describe "detect high card" do
	end
end


