class Game
  attr_accessor :player_name
  attr_accessor :answer
  attr_accessor :guess_count

  def initialize
    puts "What's your name?"
    self.player_name = gets.chomp
    self.answer = rand(1..20)
    self.guess_count = 0
  end

  def begin_game
    puts "Hello #{self.player_name}!"
    continue
  end

  def continue
    puts "What is your guess"
    puts "Psst... its #{self.answer}"
    puts "You've guessed #{self.guess_count} times"
    guess = gets.chomp
    self.guess_count += 1

    if guess.to_i == self.answer
      puts "Congrats"
    elsif self.guess_count == 3
      puts "Sorry, you've run out of guesses"
    else
      puts "Try again"
      continue # recursion
    end
  end
end
