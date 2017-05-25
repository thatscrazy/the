#!/usr/bin/env ruby

def is_straight?(array)
	@hand = []
  array.each do |i|
		i = i / 10
		@hand << i
	end

	order_count = 0
	card_count = 0

	@first_pos_is_straight = false 
	@second_pos_is_straight = false
	@third_pos_is_straight = false

  @hand[0..2].each do |n| # "n" is the VALUE
		run_count = 0
		position = @hand.index(n) # this returns the POSITION of a VALUE
		puts "position is #{@hand.index(n)}"
		5.times do |i|
			if n + i  == @hand[position + i]
			  run_count += 1
				puts "match on: #{n} + #{i} and #{@hand[position + i]}"
			else
				puts "NO match on: #{n} + #{i} and #{@hand[position + i]}"
			end
			if run_count == 5
				case position 
				when position = 0
					@first_pos_is_straight = true
				when position = 1
					@second_pos_is_straight = true
				when positition = 2
					@third_pos_is_straight = true
				end
			end
		end
		puts "FINISHING AT POSITION #{@hand.index(n)}"
	end

	if @third_pos_is_straight
		puts "Third position is a straight from #{@hand[2]} to #{@hand[6]}"
    hand_value = @hand[2].to_i + @hand[3].to_i + @hand[4].to_i + @hand[5].to_i + @hand[6].to_i
		puts hand_value
		return hand_value
  elsif @second_pos_is_straight
		puts "Second position is a straight from #{@hand[1]} to #{@hand[5]}"
    hand_value =  @hand[1].to_i + @hand[2].to_i + @hand[3].to_i + @hand[4].to_i + @hand[5].to_i
		puts hand_value
		return hand_value
	elsif @first_pos_is_straight
		puts "First position is a straight from #{@hand.values_at(0)} to #{@hand.values_at(4)}"
    hand_value =  @hand[0].to_i + @hand[1].to_i + @hand[2].to_i + @hand[3].to_i + @hand[4].to_i 
		puts hand_value
		return hand_value
	else
		puts "Not a straight"
	end
end

array_first = [20, 31, 43, 51, 60, 61, 91 ]
array_second = [20, 20, 31, 47, 50, 60, 20 ]
array_third = [20, 21, 27, 31, 47, 51, 61, 91]
array_not = [20, 20, 20, 30, 40, 50, 70 ]



puts "FIRST ARRAY<<<<<<<<<<<<<<<"
is_straight?(array_first)
puts "############"
puts "SECOND ARRAY<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
is_straight?(array_second)
puts "#########"
puts "THIRD ARRAY<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
is_straight?(array_third)
puts "#########"
#is_straight?(array_not)

