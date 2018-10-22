require_relative "player"
require_relative "board"

class MMGame
    def initialize
        #create an instance of the Board class
        #create an instance of the Player class
        @board=Board.new
        @player=Player.new
    end
    def play
        #loop 12 times for 12 guesses
        12.times do
        
            #call the player collect_guess
            guess = @player.collect_guess
            
            #pass the result to the board evaluate_guess
            result = @board.evaluate_guess(guess)
            
            #tell the player how many colors are correct in the right spots
            #and how many other colors are correct but in the wrong spots
            puts guess.to_s + " has " + result[0].to_s + " correct colors in the right spots and " +
                result[1].to_s + " correct colors in the wrong spots."
                
            #if the user gets 4 colors correct in the right spots, tell
            #them that they won, and exit the loop.
            if result[0] == 4
                puts "You WIN!"
                return
            end
        end

        #if the loop runs 12 times without a correct guess, tell them
        #that they lost
        puts "You have used up your 12 guesses.  You lose, too bad."

    end
end

mmgame=MMGame.new
mmgame.play