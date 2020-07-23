require 'bundler'
require 'colorize'
require 'pry'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/BoardCase'
require_relative 'lib/game'
require_relative 'lib/show'
require_relative 'lib/application'

player1 = Player.new("O")
player2 = Player.new("X")

puts "Voici vos symboles :"
 player1.show_value
 player2.show_value

 puts "
 ---
 "
#ensuite transition vers le plateau
