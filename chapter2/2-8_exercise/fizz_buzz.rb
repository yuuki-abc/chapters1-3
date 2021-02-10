def fizz_buzz(number)

  if number % 15 == 0
    result = "FizzBuzz"
  elsif number % 3 == 0
    result = "Fizz"
  elsif number % 5 == 0
    result = "Buzz"
  end

return result
end

puts "数字を入力してください。"
input = gets.to_i
puts "結果は..."
puts fizz_buzz(input)