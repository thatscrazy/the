Texas Hold Em and other card games for the command-line. 

Made with:

```
~/ruby_projects/the $ ruby -v
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin16]
```

run.rb is how the program will start, prompting for number of players per table and other various setups. The class Game is created and HoldEm is mixed in. This will allow for other ruleset mixins. 

cards.rb is going to be a generic module that provides a deck of cards that can be shuffled, and presented, but the rest will be left up to the caller. 

spec.rb uses minitest for testing. It will eventually be broken up per the game master class and then for each ruleset that can be loaded up.

holdem.rb this is the first ruleset. Many of the code used to check hands is in the initial commit, before I started over buidling with MiniTest. There are many versions hidden in /backup. 

This should be the initial setup for any init/run file:

```
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
```

