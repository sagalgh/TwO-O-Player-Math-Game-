require_relative 'Player.rb'
require_relative 'Question.rb'

class Game
  def initialize
   @player1= Player.new("Player 1")
   @player2= Player.new("Player 2")
   @player1.current_player = true
   @players = [@player1, @player2]
  end

  def start
    puts "Welcome to the GAME!"
    turn 
    end
  
  def winner(player)
    puts "GAME OVER #{player.name} wins with a score of #{player.lives}/3"
  end
  
  def score
    if @player1.gameOver
        winner(@player2)
    elsif @player2.gameOver
        winner(@player1)
    end
  end

  def newQuestion(player)
   prompt = Question.new()
   prompt.question(player.name)
   answer = gets.chomp()
   if prompt.answer(answer)
     puts "#{player.name}: YES! You are correct!"
   else 
     player.wrongAnswer
     puts "#{player.name}: Seriously? Noooo!"  
   end
   if @player1.lives > 0 and @player2.lives > 0
    puts "P1: #{@player1.lives} vs P2: #{@player2.lives}"
   else
    puts score
   end
  end

  def turn 
   while @player1.lives > 0 and @player2.lives > 0 do
    for player in @players
      if player.current_player
      newQuestion(player)
      end
     player.current_player = !player.current_player 
    end
   end
  end

 end
 
 game = Game.new()
 game.start
 
 
 
 
 