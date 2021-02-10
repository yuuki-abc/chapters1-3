puts "計算をはじめます"
puts "何回計算を繰り返しますか？"

looop_num = gets.to_i

for i in 1..looop_num do
  puts "#{i}回目の計算"
  puts "2つの値を入力して下さい"
  
  input_num1 = gets.to_i
  input_num2 = gets.to_i
  
  puts "a=#{input_num1}"
  puts "b=#{input_num2}"
  
  puts "計算結果を出力します"
  puts "a+b=#{input_num1 + input_num2}"
  puts "a-b=#{input_num1 - input_num2}"
  puts "a*b=#{input_num1 * input_num2}"
  puts "a/b=#{input_num1 / input_num2}"
end