a=gets.chomp.to_i
b=gets.chomp.to_i
puts "Press 1.Add 2.Sub 3.Mul 4.Div"
t=gets.chomp.to_i
while t<5 
    case t
        when 1
          puts "Addition"
	  puts "The added values are :"
          puts a+b
        when 2 
           puts "Subtraction"
           puts "The values after subtraction is : "
           puts a-b
        when 3 
           puts "Multiplication"
           puts "The values after Multiplication are :"
           puts a*b
        when 4
          puts "Division"
          puts "The value obtained is :"
          puts a/b
        else 
          puts "Invalid Operation"
   end 
puts "1.Add 2.Sub 3.Mul 4.Div"
t=gets.chomp.to_i
end 
