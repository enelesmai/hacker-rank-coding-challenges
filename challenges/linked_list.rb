# frozen_string_literal: true

# Start with your code from last challenge.
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

  def add_at(index, item)
    node = Node.new(item)
    if index.zero?
      node.next_node = @head
      @head = node
    else
      node_at_index = get_node(index - 1)
      node.next_node = node_at_index.next_node
      node_at_index.next_node = node
    end
  end

  def remove(index)
    previous_node = get_node(index - 1)
    previous_node.next_node = get_node(index + 1)
  end

  private

  def get_node(index)
    current_node = @head
    (0..index - 1).each do |_i|
      current_node = current_node.next_node
    end
    current_node
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
