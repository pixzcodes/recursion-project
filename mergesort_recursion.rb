def merge_sort array
  return array if array.length < 2 # base case

  first_half = merge_sort(array[..array.length / 2 -1]) # splitting array in half so that
  second_half = merge_sort(array[array.length / 2..])   # we can divide and conquer

  sorted = [] # reserving space for sorted array

  until first_half.empty? || second_half.empty? 
    if first_half.first < second_half.first 
      sorted << first_half.shift
    else
      sorted << second_half.shift
    end
  end
  sorted + first_half + second_half 
  # we return it all put together because one of the halves will have one element remaining in it
end

array = [4,1,7,2,6,8,3,5]
p merge_sort(array)