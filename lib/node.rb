class Node
  attr_reader :sound
  attr_accessor :next_node

  def initialize(sound)
    @sound = sound
    @next_node = nil
  end

  def is_tail?
    next_node.nil?
  end

  def clear!
    self.next_node = nil
  end
end
