require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test
  def setup
    @obj = LinkedList.new
  end

  def test_new_returns_a_linked_list
    assert_instance_of LinkedList, @obj
  end

  def test_head_starts_out_nil
    assert_nil @obj.head
  end

  def test_append_adds_new_data_to_the_list
    longer_obj = @obj.append('doop')

    assert_instance_of Node, longer_obj
<<<<<<< Updated upstream
    assert_equal longer_obj, @obj.head
    assert_nil @obj.head.next_node
    assert_equal 'doop', longer_obj.sound
  end

  def test_count_starts_out_zero
    assert_equal 0, @obj.count
  end

  def test_count_increments_by_1_upon_adding_a_new_node
    @obj.append('doop')

    assert_equal 1, @obj.count
  end

  def test_last_node_of_a_linkedlist_is_a_tail
    @obj.append('doop')
    result = @obj.last_node(@obj.head)

    assert_instance_of Node, result
    assert_equal 'doop', result.sound
  end

  def test_append_can_add_multiple_nodes
    @obj.append('doop')
    @obj.append('deep')

    result = @obj.head.next_node.sound

    assert_equal 'deep', result
  end

  def test_empty_when_head_is_nil_or_not
    assert @obj.is_empty?

    @obj.append('deep')
    refute @obj.is_empty?
  end

  def test_add_node
    longer_obj = @obj.add_node('deep')

    assert_instance_of Node, longer_obj
    assert_equal 'deep', longer_obj.sound
  end

  def test_count_nodes_properly
    @obj.append('doop')
    @obj.append('deep')

    assert_equal 2, @obj.count
  end

  def test_to_string_concatenates_multiple_strings_together
    @obj.append('doop')
    @obj.append('deep')

    assert_equal 'doop deep', @obj.to_string
  end

  def test_prepend
    @obj.append('doop')
    @obj.append('deep')
    @obj.prepend('ding')

    expected = 'ding doop deep'

    assert_equal expected, @obj.to_string
    assert_equal 3, @obj.count
  end

  def test_insert
    @obj.append('doop')
    @obj.append('deep')
    @obj.append('ding')

    result = @obj.insert(1, 'woo')
    expected = 'doop woo deep ding'

    assert_instance_of Node, result
    assert_equal expected, @obj.to_string
  end

  def test_find
    @obj.append('deep')
    @obj.append('woo')
    @obj.append('shi')
    @obj.append('shu')
    @obj.append('blop')

    result = @obj.find(2, 1)
    assert_equal 'shi', result

    result_2 = @obj.find(1, 3)
    assert_equal 'woo shi shu', result_2
  end

  def test_includes
    @obj.append('deep')
    @obj.append('woo')
    @obj.append('shi')
    @obj.append('shu')
    @obj.append('blop')

    assert @obj.includes?("deep")
    refute @obj.includes?("dep")
  end

  def test_pop
    @obj.append('deep')
    @obj.append('woo')
    @obj.append('shi')
    @obj.append('shu')
    @obj.append('blop')

    assert_equal 'blop', @obj.pop
    assert_equal 'shu', @obj.pop
    assert_equal 'deep woo shi', @obj.to_string
=======
    assert_equal longer_obj, obj.head
    assert_nil obj.head.next_node
    assert_equal 'doop', longer_obj.sound
>>>>>>> Stashed changes
  end

end
