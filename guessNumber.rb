
# generating random number and the guess game

secretNumber = rand 1 .. 100

guessCount = 0
guess = false

puts "Welcome, guess a number between 1 an 100"
while guess != secretNumber
  #invalid guess count
  if guessCount > 10
  puts "The Game is OVer!!!"
  puts "The Correct number was #{secretNumber}"
  break
  #valid number of guesses
  else
    guess = Integer gets.chomp
    if guess > secretNumber
      puts "Guess is too high"
      guessCount += 1
      closeHIgh = secretNumber - guess
      puts "Your guess is #{closeHIgh} close to the secret Number"
    elsif  guess < secretNumber
      puts "Guess is too low"
      guessCount += 1
      closeLow = secretNumber - guess
      puts "Your guess is #{closeLow} close to the secret Number"
    else
      puts"Congrats you got it right. The correct number was #{secretNumber}"
    end
  end
end

