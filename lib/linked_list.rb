require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    if is_empty?
      self.head = node
    else
      last_node(self.head).next_node = node
    end
  end

  def count
    @head.nil? ? 0 : 1
  end

  def to_string
    self.head.sound
  end

  def last_node(node)
    if node.is_tail?
      node
    else
      last_node(node.next_node)
    end
  end

  def is_empty?
    self.head.nil?
  end
end
