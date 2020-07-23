require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/player'

player1 = Player.new("O")
player2 = Player.new("X")
