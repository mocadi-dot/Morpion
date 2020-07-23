require_relative 'BoardCase'

class Board
  attr_accessor :A1, :A2, :A3, :A1, :A2, :A3, :C1, :C2, :C3 # si j'ai le temps :count_turn

  def initialize
    @A1=BoardCase.new("A1")
    @A2=BoardCase.new("A2")
    @A3=BoardCase.new("A3")
    @B1=BoardCase.new("B1")
    @B2=BoardCase.new("B2")
    @B3=BoardCase.new("B3")
    @C1=BoardCase.new("C1")
    @C2=BoardCase.new("C2")
    @C3=BoardCase.new("C3")
  end

  def board
    @board = [A1, A2, A3, B1, B2, B3, C1, C2, C3]
    return @Board
  end



  def play_turn #demander ce que le joueur souhaite faire + changer la BoardCase en fonction de la valeur X ou Y case_content?
    puts "#{@name} que souhaitez-vous jouer"
    @case_name = case_content #il choisi la case et sa change le case_content
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
