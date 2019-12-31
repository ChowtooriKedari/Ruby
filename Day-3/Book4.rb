class Book
 attr_reader :title, :author, :price
 attr_writer :title, :author, :price
def is_price_high?
	if @price>1000
            return true
    	else
 	    return false
	end
end
end

B=Book.new
 B.title=("THE  GOLDEN DAYS")
 B.author=("SAM")
 B.price= 2000
puts B.title
puts B.author
puts B.is_price_high?
