# frozen_string_literal: true

def repeated_string(s, n)
  s = s.downcase
  return 0 if n < 1

  return n if s == 'a'

  residuo = n % s.length
  if n < s.length
    s[0..n - 1].split('').count('a')
  elsif residuo.zero?
    s.split('').count('a') * (n / s.length)
  else
    s.split('').count('a') * (n / s.length) + s[0..residuo - 1].split('').count('a')
  end
end

s = 'abaaa'
n = 23
repeated_string(s, n)
