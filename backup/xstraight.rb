#!/usr/bin/env ruby
array = [1, 2, 3, 4]

#starting at position [0], does [0] + 1, equal [1]

if array[0] + 1 == array[1]
	puts "true"
end

#check if a position equals the next value minus 1 (ascending):

def is_straight?(array)
	array.each_with_index do | value, index |
	
	
	  if value + 1 == array[index + 1]
	    puts "index [#{index}] "
			puts "value #{value}"
			puts "true"
	  elsif index == array.length - 1
			# end of the array should not produce a false
			puts "index [#{index}]"
			puts "value #{value}"
			puts "end"
	  else
			puts "index [#{index}]"
			puts "value #{value}"
			puts "false"
		end
	end
end

array1 = [ 1, 2, 3, 4, 5, 7 ]
array2 = [1, 2 ]
array3 = [1, 2, 4, 5, 6]

is_straight?(array1)
is_straight? array2
is_straight? array3

#check values in an array up to 5 elements:

array = []

count = 1


