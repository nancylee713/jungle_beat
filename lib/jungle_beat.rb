require './lib/linked_list'

class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
    @valid_beats = "tee deep bop boop la na doo ditt woo hoo shu".split
  end

  def append(str)
    splitted = str.split
    splitted.each do |sound|
      if valid_beats?(sound)
        self.list.append(sound)
      else
        return 0
        next
      end
    end
  end

  def all
    self.list.to_string
  end

  def count
    self.list.count
  end

  def play
    `say -r 500 -v 'Alice' #{self.list.to_string}`
  end

  def prepend(str)
    splitted = str.split
    selected = splitted.select { |sound| valid_beats?(sound)}
    selected.each { |sound| self.list.prepend(sound) }
    selected.count
  end

  private

  def valid_beats?(str)
    @valid_beats.include?(str)
  end
end
