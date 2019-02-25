
def pivot_position(arr, left, right)
  pivot = right

  until right == left do
    while arr[right] > arr[pivot] do
      right -= 1
    end
    if arr[right] < arr[pivot]
      arr[right], arr[pivot] = arr[pivot], arr[right]
      pivot = right
    end
    while arr[left] < arr[pivot] do
      left += 1
    end
    if arr[left] > arr[pivot]
      arr[left], arr[pivot] = arr[pivot], arr[left]
      pivot = left
    end
  end
  pivot
end

def quick_sort(arr, beg_index: 0, end_index: arr.size - 1)
  if beg_index < end_index 
    p = pivot_position(arr, beg_index, end_index)
    quick_sort(arr, beg_index: beg_index, end_index: p - 1)
    quick_sort(arr, beg_index: p + 1, end_index: end_index)
  end
  arr
end

