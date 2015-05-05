def hot_or_cold(guess)
  random_num = rand(1..100)
  count = 0
  while count < 4
    if guess > random_num
      puts "You are too high!"
      puts "Sorry, the number was #{random_num}"
      guess = gets.chomp.to_i
    elsif guess < random_num
      puts "You are too low!"
      puts "Sorry, the number was #{random_num}"
      guess = gets.chomp.to_i
    else
      puts "You win!"
      break
    end
    count += 1
  end
end

puts "Please guess a number between 1 and 100"
guess = gets.chomp.to_i

hot_or_cold(guess)
