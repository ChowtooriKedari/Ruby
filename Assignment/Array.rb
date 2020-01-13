a=[1,2,3,4,5,6,7,8,9,10]
puts   "1.Add
	2.Maximum 
	3.Minimum 
	4.Average 
	5.Sum 
	6.Search
	7.Display
	8.Search Value By Index
	9.Delete Value 
	10.Exit"
t=gets.chomp.to_i
while t<10
      case t
          when 1
		puts "Enter the value you need to add :"
		b=gets.chomp.to_i
                a[(a).length()]=b
	  when 2
                puts  "The maximum value in the array is : "
                puts a.max
	  when 3
		 puts  "The minimum value in the array is : "
                 puts a.min
          when 4
		 puts "The Average of all the elements in the array :"
		 sum=0
		 for i in a do
		 sum=sum+i
		 end
		 puts sum/a.length()
          when 5
		 puts "The sum of all the elements in the array are : "
		 sum=0
		 for i in a do
		 sum=sum+i
		 end
		 puts sum
	  when 6
		 puts "Enter the element that is to be searched : "
                 b=gets.chomp.to_i
k=1
		 for i in a do
		 if b==i
 		 puts "Element found"
k=0
end
end
if k==1
puts "No such element found "
   		 end
		
	  when 7
		puts "The elements in the array are : "
                puts a
	  when 8
                puts "Enter the index of the element which is to be returned : "
                 b=gets.chomp.to_i
                puts a[b]
          when 9
		puts "Enter the index of the element which is to be deleted : "
		 b=gets.chomp.to_i
		a.delete_at(b)
          else 
                puts "Exit"
     end 
puts   "1.Add
	2.Maximum 
	3.Minimum 
	4.Average 
	5.Sum 
	6.Search
	7.Display
	8.Search Value By Index
	9.Delete Value 
	10.Exit"
t=gets.chomp.to_i
end

              
		
