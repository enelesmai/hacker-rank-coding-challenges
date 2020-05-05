#!/bin/ruby
# frozen_string_literal: true

def fibonacci_even_sum(n)
  seq_before = 1
  seq_current = 1
  sum = 0
  fibo = 0
  while seq_current < n

    fibo = seq_before + seq_current
    seq_before = seq_current
    seq_current = fibo

    sum += fibo if fibo.even? && fibo < n
  end

  sum
end

t = gets.strip.to_i
(0..t - 1).each do |_a0|
  n = gets.strip.to_i
  p fibonacci_even_sum(n)
end
