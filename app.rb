require 'bundler'
require 'colorize'
require 'pry'
Bundler.require


require_relative 'lib/board'
require_relative 'lib/BoardCase'
require_relative 'lib/player'
require_relative 'lib/game'


Game.new.game_launch

#ensuite transition vers le plateau
