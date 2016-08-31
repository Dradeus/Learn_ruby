#write your code here
def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, re=2)
	( [str] * re ).join(' ')  
end

def start_of_word(str, n)
	str[0..n-1]
end

def first_word(str)
	str.split(' ')[0]
end

def titleize(str)
	ignore = ["and", "the", "over"]
	arr = str.split(' ')

	arr.each { |n| n.capitalize! unless ignore.include?(n) }

	arr[0].capitalize!
	arr.join(' ')
end
