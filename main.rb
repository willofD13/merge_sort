def merge_sort(array)
  n = array.length
  a = []
  b = []
  c = []
  
  if array.length == 1
    return 
  else 
    a = array.slice(0,n/2)
    b = array.slice(n/2,n)
    merge_sort(a)
    merge_sort(b)
    Ia = 0 
    Ib = 0
    Ic = 0
    while Ia < a.length || Ib < b.length 
      if a[Ia] < b[Ib]
        c[Ic] = a[Ia]
        Ia += 1
      else 
        c[Ic] = b[Ib] 
        Ib += 1
      end 
      Ia += 1
    end
  end 
end

merge_sort([1,2,5,3,6,2,6,8])
