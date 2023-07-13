require 'pry-byebug'
def merge_sort(array)
  n = array.length
  a = []
  b = []
  
  if n == 1
    return
  else 
    a = array.slice(0,n/2)
    b = array.slice(n/2,n)
    merge_sort(a)
    merge_sort(b)
    pointer_a = 0 
    pointer_b = 0
    pointer_c = 0
    array.clear
    while pointer_a < a.length && pointer_b < b.length
      if a[pointer_a] < b[pointer_b]
      array[pointer_c] = a[pointer_a]
        pointer_a += 1
      else 
        array[pointer_c] = b[pointer_b]
        pointer_b += 1
      end
      pointer_c += 1 
    end
    if pointer_a == a.length
      array.push(b[pointer_b..b.length]).flatten!
    else 
      array.push(a[pointer_a..a.length]).flatten!
    end
    #binding.pry
  end 
end

p merge_sort([1,5,3,6,7,4,8])
