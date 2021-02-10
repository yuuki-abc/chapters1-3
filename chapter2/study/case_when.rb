# num = 3

# case num

# when 1, 2
# puts "1と2は大吉です。"

# when 3, 4
# puts "3と4は中吉です。"

# else
# puts "1~4以外は小吉です。"

# end





# num = 70

# case num

# when 1..50
# puts "1~50は大吉です。"

# when 51..100
# puts "51~100は中吉です。"

# else
# puts "1~100以外は小吉です。"

# end



color = "red"
colors1 = ["blue", "yellow", "green"]
colors2 = ["red", "black", "white"]

case color

when *colors1
puts "redはcolors1にあります。"

when *colors2
puts "redはcolors2にあります。"

else
puts "redはどこにもありません。"

end