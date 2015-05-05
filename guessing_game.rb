#NORMAL MODE----------------------------------

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
    else
      puts "You win!"
      break
    end
    count += 1

    guessed_nums.push(guess)
    guess = gets.chomp.to_i
  end
  guessed_nums.push(guess)
  puts "You guessed #{guessed_nums}"
  if count == 4
    puts "Sorry, the number was #{random_num}"
    puts "You lose!"
  end
end

puts "Please guess a number between 1 and 100"
guess = gets.chomp.to_i

guessing(guess)

#------------------------------------------------

def guessing(guess)
  random_num = rand(1..100)
  count = 0
  hot_or_cold(guess, random_num, count)
end

def hot_or_cold(guess, random_num, count)
  while count < 4
    if guess > random_num
      puts "You are too high!"
      guess = gets.chomp.to_i
    elsif guess < random_num
      puts "You are too low!"
      guess = gets.chomp.to_i
    else
      puts "You win!"
      break
    end
    count += 1
  end
  if count == 4
    puts "Sorry, the number was #{random_num}"
    puts "You lose!"
  end
end

puts "Please guess a number between 1 and 100"
guess = gets.chomp.to_i

guessing(guess)
