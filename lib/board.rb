require 'pry'
require_relative 'BoardCase'

class Board
	attr_accessor :array_boardcase, :count_turn
	  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

  def initialize()
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @count_turn = 0
    @board = {"A1"=>"","B1"=>"", "C1"=>"","A2"=>"","B2"=>"","C2"=>"","A3"=>"","B3"=>"","C3"=>""}
  end

  def play_turn  # une méthode qui : 1) demande au bon joueur ce qu'il souhaite faire 2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    puts " Choissisez la case à remplir "
    print ">"
    insert = gets.chomp.to_s
    @board[insert]= "X"
	puts " #{@board["A1"]} | #{@board["A2"]} | #{@board["A3"]} "
	puts "-----------"
	puts " #{@board["B1"]} | #{@board["B2"]} | #{@board["B3"]} "
	puts "-----------"
	puts " #{@board["C1"]} | #{@board["C2"]} | #{@board["C3"]} "
	end
end

def top #pas obligatoire mais ça rajoute des points
puts "||*///////////////////////////////////////////////////////////////*||"
puts "||                                                                 ||"
puts "||                        **Bienvenue**                            ||"
puts "||                             au                                  ||"
puts "||                         **Morpion**                             ||"
puts "||                                                                 ||"
puts "||*///**/////////////////////////////////////////////////////**///*||"

end


  #Méthode 4 compute_damage

#  def victory
#    if Ligne a) XXX, OOO,
#    Ligne b) XXX, OOO,
#    Ligne c) XXX, OOO,

#    Colonne 1 : XXX, OOO,
#    Colonne 2 : XXX, OOO,
#    Colonne 3 : XXX, OOO,

#    Totalité du tableau :

#    1A+2B+3C : XXX, OOO,
#  3A+2B+1C : XXX, OOO,
#    return rand(1..6)
#  end

#end


#  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
#  end


### commentaire supp.
#`class BoardCase
#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

#def initialize
#TO DO : doit régler sa valeur, ainsi que son numéro de case
#end

#end


#def play_turn
#TO DO : une méthode qui :
#1) demande au bon joueur ce qu'il souhaite faire
#2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
#end
#def victory?
#TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
#end
#end
