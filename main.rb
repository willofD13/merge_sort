def merge_sort(array)
  n = array.length
  a = []
  b = []
  if array.length == 1
    return 
  else 
    a = array.slice(0,n/2)
    b = array.slice(n/2,n)
    merge_sort(a)
    merge_sort(b)
  end 
end

merge_sort([1,2,5,3,6,2,6,8])
