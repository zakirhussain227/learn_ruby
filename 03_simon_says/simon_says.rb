#write your code here
def echo(str)
  str
end
def shout(str)
  str.upcase
end
def repeat(str, n=2)
  ([str] * n).join " "
end
def start_of_word(str, n)
  i = 0
  z = ""
  while i < n do
    z = z + str[i]
    i += 1
  end
  z
end
def first_word(str)
  arr = str.split(" ")
  arr[0]
end
def titleize(str)
  arr = str.split(" ")
  l = arr.length
  result = []
  i = 0
  while i < l do
    result[i] = arr[i].capitalize
    if result[i] == "And"
      result[i] = "and"
    elsif result[i] == "The"
      result[i] = "the"
    elsif result[i] == "Over"
      result[i] = "over"
    else
    end
    result[0] = result[0].capitalize
    i += 1
  end
  return result.join(" ")
end
