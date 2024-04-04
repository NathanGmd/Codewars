def longest_comb(arr, command)
  # your code here
  command == '< <' ? incrasing(arr) : decreasing(arr)
end

def incrasing(arr)
  new_array = arr.map { |a| a if a >= arr.first }.compact
end

def decreasing(arr)
  array = arr.to_enum
  new_array = []

end

puts longest_comb([-1, 3, -34, 18, -55, 60, 118, -64], '> >')
