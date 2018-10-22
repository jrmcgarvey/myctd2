require_relative "board"

class Player
    def collect_guess
        #loop until you have a valid guess
        loop do
        
            #prompt the user for four colors separated by commas
            puts "Enter four colors separated by commas."
            print "Your choices are "
            Board::Colors.each { |c| print c + " " }
            puts
            s=gets.chomp
        
            #convert to an array, splitting on the commas
            array=s.split(",")
            
            #if there aren't four entries, give the user an error message
            #and do a next in the loop to prompt again
            if array.length != 4
                puts "You entered an invalid number of entries."
                next
            end
        
            #strip white space from each member of the array and
            #convert to lower case.  You will use the map!, strip, and
            #downcase methods.
            array.map! { |c| c.strip.downcase }
        
            #make sure that each member of the array is a member of
            #the Board::Colors array.
            colors_good=true
            array.each do |c|
                if !Board::Colors.include?(c)
                    colors_good=false
                    break
                end
            end
            if !colors_good
                puts "You entered one or more invalid colors.  Try again."
                next
            end
    
            #If all colors are valid, return
            #the array
            return array
        end
    end
end