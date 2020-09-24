def appears_most_times(array)
    qNumbers = Hash.new
    greater = {}
    max = 0
    array.each do |number|
      if qNumbers.has_key?(number)
        qNumbers[number] = qNumbers[number] += 1
        if(qNumbers[number]>max)
          max = qNumbers[number]
          greater[max] = number
        end
      else
        qNumbers[number] = 1
      end
    end
    #look for the most times appeared
    greater[max]
  end
  
  puts appears_most_times([1, 2, 3, 1, 5])
  # => 1
  
  puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
  # => 88
  
  puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
  # => 4376