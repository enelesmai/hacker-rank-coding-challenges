# frozen_string_literal: true

# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
  end

class Queue
  @first = nil
  @last = nil
  def add(number)
    node = Node.new(number)
    if @first.nil?
      @first = node
      @last = node
    else
      @last.next_node = node
      @last = node
    end
  end

  def remove
    to_remove = nil
    if @first.nil?
      return -1
    else
      to_remove = @first.value
    end

    @first = @first.next_node
    to_remove
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
