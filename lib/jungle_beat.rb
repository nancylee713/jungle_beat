require './lib/linked_list'

class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(str)
    splitted = str.split
    splitted.each do |sound|
      self.list.append(sound)
    end
  end

  def count
    self.list.count
  end
end
