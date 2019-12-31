class Book
def initialize(aname,aAuthor)
        @title=aname;
        @author=aAuthor
end
def get_title
     @title
end
def get_author
	 @author
end
def set_title(aname)
   @name=aname
 
end
def set_author(aAuthor)
   @author=aAuthor
end
end

B=Book.new("THE DAVINCI CODE","DAN BROWN")
puts B.get_title
puts B.get_author
