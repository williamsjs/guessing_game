def guessing(guess)
  random_num = rand(1..100)
  count = 0
  hot_or_cold(guess, random_num, count)
end

def hot_or_cold(guess, random_num, count)
  guessed_nums = []
  while count < 4
    if guessed_nums.include?(guess)
      puts "you've already guessed #{guess}"
    elsif guess < random_num
      puts "You are too low!"
    elsif guess > random_num
      puts "You are too high"
    end

    if guess == random_num
      break
    end

    guessed_nums.push(guess)
    count += 1
    guess = gets.chomp.to_i
  end
  guessed_nums.push(guess)
  puts "You guessed #{guessed_nums}"
  if guessed_nums.include?(random_num)
    puts "You won!"
  else
    puts "Sorry, the number was #{random_num}"
    puts "You lose!"
  end
end

puts "Please guess a number between 1 and 100"
guess = gets.chomp.to_i

guessing(guess)
