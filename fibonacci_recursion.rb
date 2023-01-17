fib_arr = [0,1]
def fibs input, arr
  while input >= 3
    n = arr[-1] + arr[-2]
    arr << n
    input -= 1
  end
  arr
end
puts "Non recursive"
p fibs(8, fib_arr)

def fibs_rec input, fib_arr
  return fib_arr if input >= 0
  fib_arr << fib_arr[-1] + fib_arr[-2]
  input -= 1
  fibs_rec(input, fib_arr)
end

puts "recursive"
p fibs_rec(8, fib_arr)