# frozen_string_literal: true

def palindrome_index(s)
  start_index = 0
  end_index = s.length - 1

  return -1 if is_palindrome(s)
  return 0 if is_palindrome(s[1..-1])
  return end_index if is_palindrome(s[0..end_index - 1])

  while start_index < end_index

    start_index += 1
    end_index -= 1

    if s[start_index] != s[end_index]
      if is_palindrome(s[0..start_index - 1] + s[start_index + 1..-1])
        return start_index
      elsif is_palindrome(s[0..end_index - 1] + s[end_index + 1..-1])
        return end_index
      end
    end

  end

  -1
end

def is_palindrome(s)
  s == s.reverse
end

p palindrome_index 'anitalavalatina'
