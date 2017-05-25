module Games
	class Game
		attr_reader :total_players
		def initialize(players)
			@total_players = players
		end
	end
end

