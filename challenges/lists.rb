# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
  end

class LinkedList
  # setup head and tail
  @tail = nil
  @head = nil

  def add(number)
    # your code here
    node = Node.new(number)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def get(index)
    current_node = @head
    (0..index - 1).each do |_i|
      current_node = current_node.next_node
    end
    current_node.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5
