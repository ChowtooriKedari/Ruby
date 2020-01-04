class Book
 attr_reader :title, :author
 attr_writer :title, :author
 attr_accessor :title, :author
def initialize (atitle,author)
   @title=atitle
   @auhtor=author
end
def display
puts @title,@author
end
def to_s 
puts "Indiana Jones"
end
end

B=Book.new("Book1","Author1")
#puts B.methods
puts B
