require_relative './boardCase'
require_relative './player'

class Board

    attr_accessor :board

    def initialize
        @board =  [*1..9].map { |i|  " " }
    end

    def to_s
            # affiche le plateau
            puts ""
            puts ""
            puts ("                        1   |   2   |    3                  ")
            puts ("                     -----------------------")
            puts ("                    |       |       |       |")
            puts ("                  A |   #{@board[0]}   |   #{@board[3]}   |   #{@board[6]}   |")
            puts ("                    |       |       |       |")
            puts ("                    |-------|-------|-------|")
            puts ("                    |       |       |       |")
            puts ("                  B |   #{@board[1]}   |   #{@board[4]}   |   #{@board[7]}   |")
            puts ("                    |       |       |       |")
            puts ("                    |-------|-------|-------|")
            puts ("                  C |       |       |       |")
            puts ("                    |   #{@board[2]}   |   #{@board[5]}   |   #{@board[8]}   |")
            puts ("                    |       |       |       |")
            puts ("                     -----------------------")
            puts ""
            puts ""
        end
        def play_turn(symbol)   # change la case jouée en fonction de ce qu'a joué le joueur (X, ou O)
              position = gets.chomp
              if position == ("a1") || position == ("a2") || position == ("a3") || position == ("b1") || position == ("b2") || position == ("b3") || position == ("c1") || position == ("c2") || position == ("c3")
                  if position == "a1" && @board[0] == " "
                      @board[0] = symbol
                  elsif position == "a1" && (@board[0] == "X" || @board[0] == "O")
                      puts ""
                      end
                  if position == "a2" && @board[3] == " "
                      @board[3] = symbol
                  elsif position == "a2" && (@board[3] == "X" || @board[3] == "O")
                      puts ""
                      end
                  if position == "a3" && @board[6] == " "
                      @board[6] = symbol
                  elsif position == "a3" && (@board[6] == "X" || @board[6] == "O")
                      puts ""
                      end
                  if position == "b1" && @board[1] == " "
                      @board[1] = symbol
                  elsif position == "b1" && (@board[1] == "X" || @board[1] == "O")
                      puts ""
                      end
                  if position == "b2" && @board[4] == " "
                      @board[4] = symbol
                  elsif position == "b2" && (@board[4] == "X" || @board[4] == "O")
                      puts ""
                      end
                  if position == "b3" && @board[7] == " "
                      @board[7] = symbol
                  elsif position == "b3" && (@board[7] == "X" || @board[7] == "O")
                      puts ""
                  end
                  if position == "c1" && @board[2] == " "
                      @board[2] = symbol
                  elsif position == "c1" && (@board[2] == "X" || @board[2] == "O")
                      puts ""
                  end
                  if position == "c2" && @board[5] == " "
                      @board[5] = symbol
                  elsif position == "c2" && (@board[5] == "X" || @board[5] == "O")
                      puts ""
                  end
                  if position == "c3" && @board[8] == " "
                      @board[8] = symbol
                  elsif position == "c3" && (@board[8] == "X" || @board[8] == "O")
                      puts ""
                  end
                  else
                    puts ""
                  end
          end

          def victory
              if @board[0] == 'O' && @board[1] == 'O' && @board[2] == 'O' ||
                  @board[3] == 'O' && @board[4] == 'O' && @board[5] == 'O' ||
                  @board[6] == 'O' && @board[7] == 'O' && @board[8] == 'O' ||
                  @board[0] == 'O' && @board[3] == 'O' && @board[6] == 'O' ||
                  @board[1] == 'O' && @board[4] == 'O' && @board[7] == 'O' ||
                  @board[2] == 'O' && @board[5] == 'O' && @board[8] == 'O' ||
                  @board[0] == 'O' && @board[4] == 'O' && @board[8] == 'O' ||
                  @board[2] == 'O' && @board[4] == 'O' && @board[6] == 'O' ||
                  @board[0] == 'X' && @board[1] == 'X' && @board[2] == 'X' ||
                  @board[3] == 'X' && @board[4] == 'X' && @board[5] == 'X' ||
                  @board[6] == 'X' && @board[7] == 'X' && @board[8] == 'X' ||
                  @board[0] == 'X' && @board[3] == 'X' && @board[6] == 'X' ||
                  @board[1] == 'X' && @board[4] == 'X' && @board[7] == 'X' ||
                  @board[2] == 'X' && @board[5] == 'X' && @board[8] == 'X' ||
                  @board[0] == 'X' && @board[4] == 'X' && @board[8] == 'X' ||
                  @board[2] == 'X' && @board[4] == 'X' && @board[6] == 'X'
                  return true
              else
                  return false
              end
          end


      end
