#write your code here
def translate(str)
	arr = []
	str.split(' ').each { |n| arr << translation(n) }
	arr.join(" ")
end

def translation(str)
  vowels = [ 'a', 'e', 'i', 'o', 'u', 'y' ]
  arr = str.split('')
  new_arr = []

  while vowels.include?(arr[0]) == false
    ch = arr.shift
    new_arr.push(ch)
    if ch == 'q' && arr[0] == 'u'
      arr.shift
      new_arr.push('u')
    end
  end
  result = arr.join + new_arr.join + "ay"
end
