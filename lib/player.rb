require 'pry'

class Player
  attr_accessor :name, :player_value
  def ask_name
    puts "Quel est ton nom?"
    return gets
  end

  def initialize(name, player_value) # initialisation du nom et de la valeur
      @name = ask_name
      @player_value = player_value

      end
end

#rajouter "nom" ton symbole sera "X" "nom" ton symbole sera "O" pour chaque joueur
