class Book1
def title=(aname)
      @title=aname
end 
def author=(author1)
    @author=author1
end
end
B=Book1.new
 B.title="THE  GOLDEN DAYS"
 B.author="SAM"
puts B.title
puts B.author


