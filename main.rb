# require files
require './player'
require './game'
require './generator'

g = Game.new
p1 = Player.new("player1")
p2 = Player.new("player2")
g.add_player(p1)
g.add_player(p2)
g.run
