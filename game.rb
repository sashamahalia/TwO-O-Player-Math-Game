class Game

  def initialize(player1, player2, questions)
    @player1 = player1
    @player2 = player2
    @current_player = @player2
    @questions = questions
  end

  def switch_players
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def new_turn
      while(@player1.lives > 0 && @player2.lives > 0)
        self.switch_players

        print "#{@current_player.name}: "

        current_question = @questions.questions
        answer = gets.chomp

        if answer.to_i == current_question 
          puts "#{@current_player.name}: YES! You are correct."
        end
      
        if answer.to_i != current_question
          puts "Sorry, you blew it!"
          @current_player.lose_life
        end
        
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        if (@player1.lives > 0 && @player2.lives > 0)
          puts "--- NEW TURN ---"
        end
      end
      self.switch_players
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}"
      puts "--- GAME OVER ---"
      puts "Good bye!"
  end
end