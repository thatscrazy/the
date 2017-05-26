#!/usr/bin/env ruby

require 'minitest/autorun'
require 'minitest/pride'

require_relative './straight.rb'

describe Straight do
  it "will detect a low straight" do
		hand = [ 2, 3, 4, 5, 6, 7, 8, 9 ]
		assert Straight.is_straight?(hand)
	end
  it "will detect a middle straight" do
		hand = [ 3, 3, 4, 5, 6, 7, 9, 9 ]
		assert Straight.is_straight?(hand)
	end
  it "will detect a high straight" do
		hand = [ 3, 3, 5, 6, 7, 8, 9, 5 ]
		assert Straight.is_straight?(hand)
	end
	it "will detect an ace low straight" do
		hand = [ 2, 3, 4, 5, 14, 9, 9 ]
		assert Straight.is_straight?(hand)
	end

	it "will detect what is not a straight" do
		hand = [ 2, 3, 4, 4, 14, 9, 9 ]
		refute Straight.is_straight?(hand)
	end
end
