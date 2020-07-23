class Board
  attr_accessor :array_boardcase # si j'ai le temps :count_turn

  def initialize
    Boardcase.new


      @array_boardcase=[A1, A2, A3, B1, B2, B3, C1, C2, C3]

  end
end

  #  def initialize
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  #  end




#  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
#  end

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


#:count_turn=@count_turn
#TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
#Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
