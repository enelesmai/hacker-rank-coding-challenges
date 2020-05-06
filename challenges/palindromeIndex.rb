# frozen_string_literal: true

def palindromeIndex(s)
  start_index = 0
  end_index = s.length - 1

  return -1 if isPalindrome(s)

  return 0 if isPalindrome(s[1..-1])
  return end_index if isPalindrome(s[0..end_index - 1])

  while start_index < end_index

    start_index += 1
    end_index -= 1

    if s[start_index] != s[end_index]
      if isPalindrome(s[0..start_index - 1] + s[start_index + 1..-1])
        return start_index
      elsif isPalindrome(s[0..end_index - 1] + s[end_index + 1..-1])
        return end_index
      end
    end

  end

  -1
end

def isPalindrome(s)
  s == s.reverse
end

palindromeIndex 'anitalavalatina'
