class Book
# write your code here
	def title
		@name
	end

	def title=(s)
		@name = ( s.split(' ').each { |w| 
        w.capitalize! if w.length > 3 || ( w == 'man' || w == 'eat' || w == 'day' || w == 'was' || w == 'i')
      } )
    	@name[0].capitalize!
    	@name = @name.join(' ')
  end

end
