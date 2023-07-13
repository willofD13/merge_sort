require 'pry-byebug'
def merge_sort(array)
  n = array.length
  left_half = []
  right_half = []
  
  if n == 1
    return array
  else 
    left_half = merge_sort(array.slice(0,n/2))
    right_half = merge_sort(array.slice(n/2,n))
    a = 0 
    b = 0
    c = 0
    sorted = []
   
    while a < left_half.length && b < right_half.length
      if left_half[a] < right_half[b]
      sorted[c] = left_half[a]
      a += 1
      else 
        sorted[c] = right_half[b]
        b += 1
      end
      c += 1 
    end
    if a == left_half.length
      sorted.push(right_half[b..right_half.length]).flatten!
    else 
      sorted.push(left_half[a..left_half.length]).flatten!
    end
    #binding.pry
    sorted
  end
  sorted 
end

p merge_sort([1,5,3,6,7,4,8])
