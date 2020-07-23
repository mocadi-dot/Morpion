require 'pry'

class Player
  attr_accessor :name, :player_value
  def ask_name
    puts "Quel est ton nom?"
    return gets
  end

  def initialize(player_value) # initialisation du nom et de la valeur
      @name = ask_name
      @player_value = player_value
  end

  def show_value #défini l'affichage des noms des joueurs
      puts "#{@name} Super tu seras les #{@player_value} lors de cette partie !"
  end
end
