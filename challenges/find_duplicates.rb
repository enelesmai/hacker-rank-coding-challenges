require 'set'

def find_duplicates(array)
  # write your code here
  s = Set.new(array)
  i = 0
  deleted = []
  
  while i<= array.length do
    number = array[i]
    if s.include?(number) && !deleted.include?(number)
      array.delete_at(i)
      deleted.push(number)
    else
      i += 1
    end
  end
  array
end

p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]
