class Book
# write your code here
attr_accessor :title
def title
  t = @title.split(" ")
  t.map!{ |t|
    if t == "and" or t == "in" or t == "the" or t == "of" or t == "a" or t == "an"
      t.downcase
    else
      t.capitalize
    end
  }
  t = t.join(" ")
  t[0] = t[0].upcase
  t
end
end
