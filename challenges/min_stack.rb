# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
  end

class Stack
  @head = nil
  @top = nil
  @min_value = 0

  def initialize
    @min_value = 0
  end

  def push(number)
    node = Node.new(number)
    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def pop
    @top = @head
    @head = @head.next_node
    @min_value = 0
    @top.value
  end

  def min
    current_node = @head
    until current_node.nil?
      if current_node.value < @min_value || @min_value === 0
        @min_value = current_node.value
        end
      current_node = current_node.next_node
    end
    @min_value
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
