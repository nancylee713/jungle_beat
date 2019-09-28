require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def add_node(data)
    Node.new(data)
  end

  def append(data)
    if is_empty?
      self.head = add_node(data)
    else
      last_node(self.head).next_node = add_node(data)
    end
  end

  def count
    is_empty? ? 0 : count_node(self.head, 1)
  end

  def to_string
    if is_empty?
      ""
    elsif self.head.is_tail?
      initial_sound
    else
      stringify(self.head.next_node, initial_sound)
    end
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

  private

  def count_node(node, base)
    if node.is_tail?
      base
    else
      count_node(node.next_node, base += 1)
    end
  end

  def initial_sound
    self.head.sound
  end

  def concat(initial_sound, node)
    "#{initial_sound} #{node.sound}"
  end

  def stringify(node, initial_sound)
    if node.is_tail?
      concat(initial_sound, node)
    else
      stringify(node.next_node, concat(initial_sound, node))
    end
  end
end
