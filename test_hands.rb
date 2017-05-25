game = Cards::CardGame.new

player = game.create_hand(2)
board = game.create_hand(5)

player_hand = ( player + board ).sort

