a=["1.sastra.ac.in","2.sastra.ac.in","1@gmail.com","2@gmail.com","3@sastra.edu","4@sastra.edu"]
puts   "1.Add Mail Id
	2.Display
	3.Display only edu email Ids
	4.Search
	5.Delete Mail Id By Value 
	6.Diplay unique domains of all mail Ids
        7.Count Mail Id's in a given domain
        8.Exit"
t=gets.chomp.to_i
while t<8
      case t
          when 1
		puts "Enter the mail you need to add :"
		b=gets.chomp.to_s
                a[(a).length()]=b
                puts " "
	  when 2
                puts  "The Mail Ids are  : "
                puts a
 		puts " "
	  when 3
		puts "The mail Ids in EDU Domain are: "
		for  i in a do
		if i.include?"edu"
                   puts i	
                end 
 		end
 		puts " "	
          when 4
		 puts "Enter the element that is to be searched : "
                 b=gets.chomp.to_s
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
  		 puts " "
          when 5
		puts "Enter the index of the element which is to be deleted : "
		 b=gets.chomp.to_i
		a.delete_at(b)
		 puts " "
	  when 6
		 puts "The mail Ids in EDU Domain are: "
k=""
k1=" "
k2=" "
		for  i in a do
		if i.include?"edu"
		       k+=" "+i
                elsif i.include?"in"
		k1+=" "+i
                else
		k2+=" "+i
                end 
 		end	
		puts "EDU ----- DOMAIN"
		puts k
		 puts " "
		puts "IN  ----- DOMAIN"
		puts k1
		 puts " "
		puts "COM ----- DOMAIN"
		puts k2
		 puts " "
	  when 7
		 puts "The count of mail Ids in Domain are :  "
count=0
count1=0
count2=0
		for  i in a do
		if i.include?"edu"
		count=count+1
                elsif i.include?"in"
		count1=count1+1
                else
		count2=count2+1	
                end 
 		end
		puts "EDU DOMAIN COUNT : ",count
		puts "IN  DOMAIN COUNT : ",count1
		puts "COM DOMAIN COUNT : ",count2
		 puts " "

          else 
                puts "Exit"
     end 
puts   "1.Add Mail Id
	2.Display
	3.Display only edu email Ids
	4.Search
	5.Delete Mail Id By Value 
	6.Diplay unique domains of all mail Ids
        7.Count Mail Id's in a given domain
        8.Exit"
t=gets.chomp.to_i
end

              
		
