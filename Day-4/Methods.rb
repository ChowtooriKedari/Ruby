class Book
 attr_reader :title, :author
 attr_writer :title, :author
 attr_accessor :title, :author
def initialise (atitle=nil,author=nil)
   @title=atitle
   @auhtor=author
end
def display
puts @title,@author
end
end

B=Book.new
puts B.methods
