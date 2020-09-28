def hash_table(arr)
  my_table_hash = Hash.new([])
  arr.each do |number|
    value = (number<0?number*-1:number)%11
    if my_table_hash.has_key?(value)
      arrhash = []
      arrhash << my_table_hash[value]
      arrhash << number
      my_table_hash[value] = arrhash
    else
      my_table_hash[value] = number
    end
  end
  sorted_hash = my_table_hash.sort.to_h
  sorted_hash.values.flatten!
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]

p hash_table([2367, -65325, 134, -185008, 3291, 7832, -65326, 789, 980, -3289, 3])
# => [7832, -3289, 980, 2367, 134, 3291, 3, -65325, -65326, 789, -185007]
