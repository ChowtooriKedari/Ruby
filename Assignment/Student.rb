class Student
$cses=" "
$eces=" "
$mech=" "
$count=0
$count1=0
def initialize(name,rollno,branch,state)
	@name=name
	@rollno=rollno
	@branch=branch
	@state=state
end
def display
	print "Name     : "
	puts @name
	print "Roll No  : "
	puts @rollno
	print "Branch   : "
	puts @branch
	print "State    : "
	puts@state
	puts " "
end
def disp(str)
   if @branch== str
      print @name
      print " ----- "
      print @branch
      puts " " 
   end
end
def displaybystate(str)
   if @state==str
      print @name
      print " ----- "
      print @state
      puts " " 
   end
end
def searchbyroll(roll)
   if @rollno==roll
      puts"STUDENT FOUND"
        print "Name     : "
	puts @name
	print "Roll No  : "
	puts @rollno
	print "Branch   : "
	puts @branch
	print "State    : "
	puts@state
	puts " "
        return 1
   end 
end
def searchbypart(roll)
   if @name.include?roll
      puts"STUDENT FOUND"
        print "Name     : "
	puts @name
	print "Roll No  : "
	puts @rollno
	print "Branch   : "
	puts @branch
	print "State    : "
	puts@state
	puts " "
        return 1
   end 
end
def deletebyroll(roll)
   if @rollno==roll
        return 1
   end 
end

def countbystate(str)
    if @state == str
       $count=$count+1
    end
   return $count
end
def countbybranch(str)
    if @branch == str
       $count1=$count1+1
    end
   return $count1
end
end

S=[]
i=1
S[i]=Student.new("A",1,"CSE","AP")
i=i+1
S[i]=Student.new("B",1,"CSE","AP")
puts   "\t1.Add New Student
	2.Display All Students 
	3.Display Student By Branch 
	4.Displa0y Students By State
	5.Search Student By Roll Number
	6.Search By Part Of The Name 
	7.Delete By Roll Number
	8.Count and Display Number Of Students By State
	9.Count and Display Number Of Students By Branch
	10.Exit"
t=gets.chomp.to_i
while t<10
      case t 
	when 1
		puts "Add Details Of New Student"
		puts "Name : "
		name=gets.chomp.to_s
		puts "Roll Number : "
		rollno=gets.chomp.to_i
		puts "Branch : "
 		branch=gets.chomp.to_s
		puts "State : "
 		state=gets.chomp.to_s
		i=i+1
		S[i]=Student.new(name,rollno,branch,state)
        when 2 
		puts "The details of all students are : \t "            
		n=S.length()
		for l in 0..n-1
		S[l].display	
		end             
        when 3
        	puts "The details of Students Branch wise are : "
                puts "Enter the Branch for which students are to be found :"
		str=gets.chomp.to_s 
        	n=S.length()
		for l in 1..n-1
		S[l].disp(str)
		end
	  when 4
        	puts "The details of Students State wise are : "
         	n=S.length()
                 puts "Enter the State for which students are to be found :"
		str=gets.chomp.to_s 
		for l in 1..n-1
		S[l].displaybystate(str)
		end
	 when 5
        	
         	n=S.length()
                 puts "Enter the roll no of student :"
		str=gets.chomp.to_i 
		for l in 1..n-1
		S[l].searchbyroll(str)
		end
        when 6
		puts "Enter the part of the name :  "
		str=gets.chomp.to_s
		n=S.length()
		for l in 1..n-1
		S[l].searchbypart(str)
                end 
	  when 7
		puts "Enter the roll no of student whose records are to be deleted : "
		 b=gets.chomp.to_i
		n=S.length()
                puts n
		for l in 1..n-1
		a=S[l].deletebyroll(b)
                if a==1
                   S.delete_at(l)
		   puts " THE RECORDS OF THE STUDENT ARE DELETED"
                   break
                end
                end 
         when 8 
               puts "Enter the state to find the number of students from it : "
		str=gets.chomp.to_s
	        n=S.length()
		puts n
		print"The number of students in "
                print str
                print " state are : "
                for l in 1..n-1
                a=S[l].countbystate(str)
                end 
                print a
		$count=0
		puts " "	
	  when 9
               puts "Enter the Branch to find the number of students from it : "
		str=gets.chomp.to_s
	        n=S.length()
		puts n
		print"The number of students in "
                print str
                print " branch are : "
                for l in 1..n-1
                a=S[l].countbybranch(str)
                end 
                print a
		$count1=0
		puts " "	
      end
puts   "\t1.Add New Student
	2.Display All Students 
	3.Display Student By Branch 
	4.Display Students By State
	5.Search Student By Roll Number
	6.Search By Part Of The Name 
	7.Delete By Roll Number
	8.Count and Display Number Of Students By State
	9.Count and Display Number Of Students By Branch
	10.Exit"
t=gets.chomp.to_i
end
