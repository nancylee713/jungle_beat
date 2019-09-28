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

  def test_append_adds_new_data_to_the_list
    obj = LinkedList.new
    longer_obj = obj.append('doop')

    assert_instance_of Node, longer_obj
    assert_equal longer_obj, obj.head
    assert_nil obj.head.next_node
    assert_equal 'doop', longer_obj.sound
  end

  def test_count_starts_out_zero
    obj = LinkedList.new
    assert_equal 0, obj.count
  end

  def test_count_increments_by_1_upon_adding_a_new_node
    obj = LinkedList.new
    obj.append('doop')

    assert_equal 1, obj.count
  end

  def test_to_string
    obj = LinkedList.new
    obj.append('doop')

    stringified = obj.to_string

    assert_equal 'doop', stringified
  end

  def test_last_node_of_a_linkedlist_is_a_tail
    obj = LinkedList.new
    obj.append('doop')

    # insert head as a parameter to check if it's the last node
    result = obj.last_node(obj.head)

    assert_instance_of Node, result
    assert_equal 'doop', result.sound
  end

  def test_append_can_add_multiple_nodes
  skip
    obj = LinkedList.new
    obj.append('doop')
    obj.append('deep')

    result = obj.head.next_node.sound
  end
end
