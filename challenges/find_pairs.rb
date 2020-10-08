def find_pairs(array, k)
  # write your code here
  new_array = []
  array.each do |number|
    paired = false
    new_array.each do |pair|
      if(pair.length<2 && pair[0] + number == k)
        pair.push(number)
        paired = true
      end
    end
    if !paired
      new_array.push([number])
    end
  end
  new_array.select { |pair| pair.length == 2 }
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]