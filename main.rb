require './game.rb'
require './player.rb'
require './question.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
questions = Question.new

new_game = Game.new(player1, player2, questions)
new_game.new_turn


