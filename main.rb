def merge_sort(array)
  n = array.length
  a = []
  b = []
  c = []
  
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
    z = a.length
    w = b.length
    while pointer_a < z && pointer_b < w
      if a[pointer_a] < b[pointer_b]
        c[pointer_c] = a[pointer_a]
        pointer_a += 1
      else 
        c[pointer_c] = b[pointer_b]
        pointer_b += 1
      end
      pointer_c += 1 
    end
    if pointer_a == a.length
      c.push(b[pointer_b..b.length]).flatten!
    else 
      c.push(a[pointer_a..a.length]).flatten!
    end
    return c
  end 
end

merge_sort([1,2,5,3,6,2,4,8])
