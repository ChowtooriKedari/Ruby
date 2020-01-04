class Book
 attr_reader :title, :author
 attr_writer :title, :author
 attr_accessor :title, :author
def initialise (atitle=nil,author=nil)
   @title=atitle
   @auhtor=author
end

end

B=Book.new
 B.title=("THE  GOLDEN DAYS")
 B.author=("SAM")
# B.price= 2000
puts B.title
puts B.author

