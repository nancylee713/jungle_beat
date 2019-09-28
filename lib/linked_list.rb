require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    self.head = Node.new(data)
  end

  def count
    @head.nil? ? 0 : 1
  end
end
