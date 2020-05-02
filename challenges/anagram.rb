# frozen_string_literal: true

# to be reviewed

def anagram(s)
  return -1 if s.length.odd?

  half_length = s.length / 2
  string_one = s[0..half_length - 1]
  string_two = s[half_length..(s.length - 1)]

  position = 0
  while position < half_length
    char1 = string_one[position]
    found = string_two.index(char1)
    string_two.slice!(found, 1) unless found.nil?
    position += 1
  end

  string_two.length
end

s = 'aaabbb'

anagram(s)
