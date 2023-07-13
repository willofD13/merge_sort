require 'pry-byebug'
def merge_sort(array)
  n = array.length
  left_half = []
  right_half = []
  
  if n == 1
    return
  else 
    left_half = array.slice(0,n/2)
    right_half = array.slice(n/2,n)
    merge_sort(left_half)
    merge_sort(right_half)
    a = 0 
    b = 0
    c = 0
    array.clear #the original array empties and becomes the new merged array
    while a < left_half.length && b < right_half.length
      if left_half[a] < right_half[b]
      array[c] = left_half[a]
      a += 1
      else 
        array[c] = right_half[b]
        b += 1
      end
      c += 1 
    end
    if a == left_half.length
      array.push(right_half[b..right_half.length]).flatten!
    else 
      array.push(left_half[a..left_half.length]).flatten!
    end
    #binding.pry
  end 
end

p merge_sort([1,5,3,6,7,4,8])
