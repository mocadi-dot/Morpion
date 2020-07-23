require 'pry'
# joueurs, ou joueur 1 et joueur 2?
class Player
  attr_accessor :name,

  def initialize(name) # initialisation du nom
      @name = name
      end



  #Les Méthodes

  #Méthode 1 à définir

  def show_state #défini l'affichage des points de vie du joueur
        puts "#{@name} a #{@life_points} points de vie restant"
  end

  #Méthode 2 à définir

  def gets_damage(degats)       #dégats reçus
    @life_points -= degats
    if @life_points <= 0
      puts "le joueur #{@name} est mort !"
    end
  end
  #Méthode Détecter Victoire


  #annoncer Victoire


  #Méthode 4 Détecter match nul


  #annoncer match nul



  #proposer une autre partie
