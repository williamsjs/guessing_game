require 'date'

def guessing(guess)
  new_milli = DateTime.now.strftime('%s').to_i.to_s
  milli_array = new_milli.split('')
  random_num = milli_array[8] + milli_array[9]
  random_num = random_num.to_i
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
