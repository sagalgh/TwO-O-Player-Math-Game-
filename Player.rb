class Player 
  attr_accessor  :current_player, :lives, :name
  def initialize(name)
  @name = name
  @current_player = false
  @lives = 3
  end
  def wrongAnswer
  @lives -= 1
  end
  def gameOver
   @lives == 0
  end
end

