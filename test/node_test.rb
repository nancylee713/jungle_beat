require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_new_returns_a_node
    obj = Node.new("plop")
    assert_instance_of Node, obj
  end

  def test_next_node_returns_nil
    obj = Node.new("plop")
    assert_nil obj.next_node
  end

  def test_tail_is_true_when_next_node_is_nil
    obj = Node.new("plop")

    assert obj.is_tail?
  end

  def test_variable_state_for_next_node
    obj = Node.new("plop")
    new_sound = "deep"
    obj.next_node = new_sound

    assert_equal new_sound, obj.next_node
  end

  def test_remove_next_node
    obj = Node.new("plop")
    new_sound = 'bing'
    obj.next_node = new_sound
    obj.clear!

    assert obj.is_tail?
  end
end
