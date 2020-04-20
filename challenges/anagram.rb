# frozen_string_literal: true

# to be reviewed

def anagram(s)
  return -1 if s.length.odd?

  length = s.length / 2
  string_one = s[0..length - 1]
  string_two = s[length..(s.length - 1)]
  string_one.split('').each do |char1|
    next unless string_two.split('').any?(char1)

    found = -1
    string_two.split('').each_with_index do |char2, index|
      if char1 == char2
        found = index
        break
      end
    end
    string_two.slice!(found, 1)
    end
    string_two.split('').count
end

s = 'aaabbb'

anagram(s)
