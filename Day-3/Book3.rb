class Book
 attr_reader :title, :author
 attr_writer :title, :author
end
B=Book.new
 B.title=("THE  GOLDEN DAYS")
 B.author=("SAM")
puts B.title
puts B.author
