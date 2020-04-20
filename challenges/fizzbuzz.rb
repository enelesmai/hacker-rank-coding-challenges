# frozen_string_literal: true

def fizz_buzz
  (1..100).each do |i|
    print 'Fizz' if (i % 3).zero?
    print 'Buzz' if (i % 5).zero?
    print i if i % 3 != 0 && i % 5 != 0
    print "\n"
  end
end

fizz_buzz
