class Game
      attr_accessor :players, :board, :player_value, :whos_turn_player

      def initialize
        @player1 = Player.new("O")
        @player2 = Player.new("X")



      @board = Board.new
        puts ""
        puts "||*///////////////////////////////////////////////////////////////*||"
        puts "||                                                                 ||"
        puts "||                        **Bienvenue**                            ||"
        puts "||                             au                                  ||"
        puts "||                         **Morpion**                             ||"
        puts "||                                                                 ||"
        puts "||*///**/////////////////////////////////////////////////////**///*||"
        puts ""

        puts "Voici vos symboles :"
        @player1.show_value
        @player2.show_value

        @whos_turn_player = @player1
        puts""
        puts""
        puts (" Bienvenue dans cette partie. A vos marques, prêt. Grattez-vous !!!")
        puts""
      end

      def whos_turn_running #en boucle
            i = 0
        while i < 9
            puts ("=" * 60 )
            puts ""
            # Affiche le plateau :
            @board.to_s
            puts ""
            puts ("=" * 60 )
            puts ""
            puts ("  C'est le tour de #{@whos_turn_player.name} avec les #{@whos_turn_player.player_value}")
            print ("  Veuillez Choisir une case ")
            print (" :=> ")

            # On appelle la méthode play de la classe board sur le joueur en cours . Elle demande au joueur quelle case il joue, puis affiche son symbole dans la case
            @board.play_turn(@whos_turn_player.player_value)
            puts ""

            # On arrête la boucle en cas de victoire
            if @board.victory == true
                puts ""
                puts ("=" * 60 )
                puts ""
                @board.to_s
                puts ""
                end_page_win
                puts ""
                puts ("=" * 60 )
                puts ""
                mini_menu_replay
                puts ""
                break
            end

            #on passe au joueur suivant et on boucle (tour suivant) si pas de vainceur!
            players_change_turns
            i = i + 1
            # on affiche les nombres de tour restants car le jeux continuer d'avancer et s'arrete a 9 coups maximum
            puts ""
            puts ""
            puts (" Il reste #{9 - i} tours avant la fin de la partie !")
        end
        #page d'affichage de la fin de partie sur une égalitée ou une partie nul
        end_page_draw
        puts ""
        mini_menu_replay
    end

    def end_page_win
      puts ("#{@whos_turn_player.name} a gagné")
    end

    def mini_menu_replay
        puts (" REJOUER ")
        puts ""
        puts ("       0        - > QUITTER ")
        puts ("  autre touche  - > RECOMMENCER ").colorize(:pink)
        puts ""
        print (" |-> ")
        choise = gets.chomp
        if choise == "0"
            abort
        else
            Game.new.game_launch
        end
    end



    def players_change_turns
        if @whos_turn_player == @player1
          @whos_turn_player = @player2
        else
          @whos_turn_player = @player1
        end
    end

    def end_page_draw
      puts ("  Match nul !!!  ")
    end

    def game_launch
        # lance la partie
        while @board.victory == false
          self.whos_turn_running
        end
    end
end
