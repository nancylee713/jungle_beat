require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test
  def test_new_returns_a_linked_list
    obj = LinkedList.new
    assert_instance_of LinkedList, obj
  end

  def test_head_starts_out_nil
    obj = LinkedList.new
    assert_nil obj.head
  end
end
