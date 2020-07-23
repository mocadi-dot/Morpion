class Application

  def perform
    Morpion = Game.new
    Morpion.go         # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    end

end


Application.new.perform
