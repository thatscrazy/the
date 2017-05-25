#!/usr/bin/env ruby

require 'minitest/autorun'
require 'minitest/pride'
require_relative './run.rb'
require_relative './cards.rb'

describe Game do
	describe "Total players" do
		it "should be an integer" do
			@game = Game.new(5)
			@game.total_players.must_be_instance_of Integer
		end

		it "must contain between 2 10 players" do
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
	end
end

