
def translate(str)
  arr = str.split(" ")
  l = arr.length
  i = 0
  result = []
  if l == 1
    pig_latin(str)
  else
    while i < l
      result[i] = pig_latin(arr[i])
      i += 1
    end
    str = result.join(" ")
  end
end
def pig_latin(str)
  if str.start_with?("a", "e", "i", "o", "u")
    str += "ay"
  elsif !str.start_with?("a", "e", "i", "o", "u") #first consonat
    if str[0] == "q" and str[1] == "u"
      str = str[2..-1]+"quay"
    elsif !str[1..-1].start_with?("a", "e", "i", "o", "u") #first and second consonant
      if str[1..-1].start_with?("q") and str[2..-1].start_with?("u") #qu as consonant
        str = str[3..-1]+str[0..2]+"ay"
      elsif !str[2..-1].start_with?("a", "e", "i", "o", "u") #first, second and third consonant
        str = str[3..-1]+str[0..2]+"ay"
      else
        str = str[2..-1]+str[0..1]+"ay"
      end
    else
      str = str[1..-1]+str[0]+"ay"
    end
  end
end
