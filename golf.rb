# Solve the following problems in ruby using the fewest amount of code possible. This assignment, like golf, gets gradually harder the more you progress. If your method work then it will work with any parameters.

# Rules:

# Each problem should be solved using a single method per hole.
# The method has to work per the specifications
# Refactor and keep your code D.R.Y


# HOLE 1: Sum an array
# Create a method that takes in an array
# sums the array,
# then returns the array and the sum
def sum_array(array)
    sum = array.reduce(:+)
    print array
    puts "\nSum is #{sum}"
end

#sum_array([1,2,3,4,5])


# HOLE 2: Rock paper scissors
# Takes a user input
# The computer randomly chooses
# The winner is output to the screen

def rock_paper_scissors
    computer_choices = ["Rock", "Paper", "Scissors"]
    puts "Welcome to Rock Paper Scissors"
    sleep(1)
    puts "Please choose your play"
    puts "1) Rock"
    puts "2) Paper"
    puts "3) Scissors"
    puts "4) Quit"
    user_input = gets.to_s
    if user_input.match(/[1-4]/)
        case user_input.to_i
        when 1
            user_play = "Rock"
            computer_play = computer_choices.sample
            puts "You chose #{user_play}"
            sleep(1)
            puts "The computer chose..."
            sleep(1)
            puts "#{computer_play}!"
            if computer_play == "Rock"
                puts "You tied!"
                puts
                rock_paper_scissors
            elsif computer_play == "Paper"
                puts "You lost!!"
                puts 
                rock_paper_scissors
            else
                puts "You won!!"
                puts
                rock_paper_scissors
            end
        when 2
            user_play = "Paper"
            computer_play = computer_choices.sample
            puts "You chose #{user_play}"
            sleep(1)
            puts "The computer chose..."
            sleep(1)
            puts "#{computer_play}!"
            if computer_play == "Paper"
                puts "You tied!"
                puts
                rock_paper_scissors
            elsif computer_play == "Scissors"
                puts "You lost!!"
                puts 
                rock_paper_scissors
            else
                puts "You won!!"
                puts
                rock_paper_scissors
            end
        when 3
            user_play = "Scissors"
            computer_play = computer_choices.sample
            puts "You chose #{user_play}"
            sleep(1)
            puts "The computer chose..."
            sleep(1)
            puts "#{computer_play}!"
            if computer_play == "Scissors"
                puts "You tied!"
                puts
                rock_paper_scissors
            elsif computer_play == "Rock"
                puts "You lost!!"
                puts 
                rock_paper_scissors
            else
                puts "You won!!"
                puts
                rock_paper_scissors
            end
        when 4
            puts "Goodbye..."
            exit(0)
        end
    else
        puts
        puts "Invalid Choice"
        rock_paper_scissors
    end

    
    

end

#rock_paper_scissors


# HOLE 3: FIZZBUZZ
#  For numbers 1-100
# print “FIZZ” if the number is divisible by 3,
# print “BUZZ” if the number is divisible by 5,
# “FIZZBUZZ” if the number is divisible by both 3 and 5
# otherwise print the number

def fizz_buzz
    (1..100).each do |number|
        if number % 3 == 0 && number % 5 == 0
            puts "FIZZBUZZ"
        elsif number % 5 == 0
            puts "BUZZ"
        elsif number % 3 == 0
            puts "FIZZ"
        else
            puts number
        end
    end
end
 
#fizz_buzz

# HOLE 4: Multiples up to a given value
# The method takes in a number and a max value
# Finds all multiples of the number up to the max value.


def multiples(n, max)
    multiples = []
    (n..max).select do |i|
        i % n == 0 ? multiples.push(i) : nil
    end
    puts multiples
end

#multiples(10,100)
 

# HOLE 5: Caesar Cipher
# Take in a string and an offset
# Encrypt the string by moving letters over by the offset
# Return the encrypted string
# (e.g “ab”, 3 would return “de”).
# When you hit Z loop back to A.



# HOLE 6: String Counter
# Given a string and a sub string
# Count the number of times the substring occurs in the string
# Print the number to the console
 

# HOLE 7: Mixed pairs

# The method takes in an array of arrays.  

# Each inner array contains a pair
# The method then mixes up the pairs
# Returns a new array with the pairs mixed up.
# [[‘A’, ‘B’], [‘C’, ‘D’]] => [[‘B’, ‘C’], [‘A’, ‘D’]]

 

# HOLE 8: Love Test

# Create a method that takes in 2 strings and counts the total number of characters in common.
# Divide the total number of chars by the number in common. (Spaces do not count).
# Capitols are not the same as lowercase
# Example: "I love this code", "This code loves me"
# Total Chars: 27
# Chars In Common: 7
# Solution: 27 / 7 = 3
 

# HOLE 9:  Shopping List

# Takes in a list of strings.  

# Program sorts the list non case sensitive
# Removes duplicates
# Returns as hash using position in the list as priority { 1 => ‘a’, 2 => ‘b’ }