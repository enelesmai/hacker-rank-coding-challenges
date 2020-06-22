# Start with your code from LinkedList challenge.
# Start with your code from last challenge.
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
    
    def push(number)
      node = Node.new(number)
      if @head == nil
        @head = node
      else
        node.next_node = @head
        @head = node
      end
    end
    
    def pop
      @top = @head
      @head = @head.next_node
      return @top.value
    end
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.pop
  # => 5
  
  stack.push(2)
  stack.push(7)
  puts stack.pop
  # => 7
  
  puts stack.pop
  # => 2
  
  puts stack.pop
  # => 3