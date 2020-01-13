class Student
csestudent=""
ecestudent=""
mechstudent=""
def initialize(name,rollno,branch,state)
	@name=name
	@rollno=rollno
	@branch=branch
	@state=state
end
def display
  puts @name,@rollno,@branch,@state
end
def stubybranch(branch)
      if(branch=="CSE")
       csestudent=@name+""
      elsif(branch=="ECE")
	ecestudent+=@name+""
      else
	mechstudent+=@name+""
end

end
S=[]
i=1
S[i]=Student.new("A",1,"CSE","AP")
i=i+1
S[i]=Student.new("B",1,"CSE","AP")
puts   "1.Add New Student
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
	      n=S.length()
       	      for j in 1..n
	      S[j].display
	      end
	
             
      end
puts   "1.Add New Student
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
