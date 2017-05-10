#write your code here
def add(x,y)
  return x+y
end
def subtract(x,y)
  return x-y
end
def sum(arr)
  total = 0
  i = 0
  l = arr.length
  while i < l do
    total += arr[i]
    i += 1
  end
  return total
end
def product(* numbers)
  result = 1
  numbers.each { |n| result = result * n }
  result
end
def power(a,b)
  a**b
end
def fact(n)
  if n<= 1
    1
  else
    n * fact( n - 1 )
  end
end
