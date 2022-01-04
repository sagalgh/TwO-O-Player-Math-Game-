require_relative 'Player.rb'
require_relative 'Question.rb'

class Game
  def initialize
   @player1= Player.new("Sagal")
   @player2= Player.new("Lee")
   @player1.current_player = true
   @players = [@player1, @player2]
  end
  def newQuestion(player)
   question = Question.new()
   question.question(player.name)
   answer = gets.chomp()
   if question.answer(answer)
     puts "#{player.name}: YES! You are correct!"
   else 
     player.wrongAnswer
     puts "#{player.name}: Seriously? Noooo!"  
   end
   puts "P1: #{@player1.lives} vs P2: #{@player2.lives}"
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
  def start
   puts "Welcome to the GAME!"
   turn 
   end
 end
 
 game = Game.new()
 game.start
 
 
 
 
 