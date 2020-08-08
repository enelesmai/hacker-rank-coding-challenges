def sqrt(number)
    sqrt_recursive(number, 0, number)
  end
  
  def sqrt_recursive(number, min_interval, max_interval)
    half = (min_interval + max_interval) / 2
    return half if half * half == number
    if(half * half>number)
      sqrt_recursive(number, 0, half)
    else 
      sqrt_recursive(number, half, max_interval)
    end
  end
  
  puts sqrt(25)
  puts sqrt(7056)