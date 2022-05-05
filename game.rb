require "./players"
require "./questions"

class Game

  def initialize
    @player1 = Players.new("Player 1")
    @player2 =  Players.new("Player 2")
  end

  #game loop
  def game_turn
      @player1.question_new
      show_lives
      winner_check
      puts "---- NEW TURN ----"
      @player2.question_new
      show_lives
      puts "---- NEW TURN ----"
      game_turn
  end

  def show_lives
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "---- GAME OVER ----"
    puts "Good bye!"
    exit
  end

  def winner_check
   if @player1.alive?
    winner(@player2)
   elsif @player2.alive?
    winner(@player1)
    end
  end

  def start_game
    puts "---- START GAME ----"
    game_turn
  end

end 