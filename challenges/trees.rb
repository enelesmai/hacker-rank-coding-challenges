def leftmost_nodes_sum(array)
    sum = array[0];
    next_position = 1;
    while(array[next_position]!=nil) do
      sum += array[next_position];    
      next_position = 2*next_position+1
    end
    return sum
end
  
puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11