=begin 
pseudocode for mergesort
mergesort(array)
  if length of array <= 1
    simply return array, we are at base case
  set midpoint to length / 2
  left subarray ranges from 0 to midpoint - 1
  right subarray ranges from midpoint to legnth of array -1
  mergesort left subarray
  mergesort right subarray
  merge left and right into sorted array
=end

def mergesort(input_arr)
  return input_arr if input_arr.length <= 1

  midpoint = input_arr.length / 2
  l_array = mergesort(input_arr.slice(0...midpoint))
  r_array = mergesort(input_arr.slice(midpoint...input_arr.length))
  merge(l_array, r_array)
end

=begin
pseudocode for merging two sorted arrays into a single sorted array

merge(L, R)
  merged_array
  until either array is empty compare the first element of each
    if first el of L is smaller then add el to merged_array and remove it from L
    other add the first el R to the merged_array and remove it from R
  if either array runs out of elements, add the rest of the other array to the merged_array
  DONE
=end

def merge(l_arr, r_arr)
  merged_array = []
  until l_arr.empty? || r_arr.empty?
    if l_arr[0] < r_arr[0]
      merged_array.push(l_arr.shift)
    else
      merged_array.push(r_arr.shift)
    end
  end
  if l_arr.empty?
    merged_array += r_arr
  elsif r_arr.empty?
    merged_array += l_arr
  end
  merged_array
end

p mergesort([1, 0])