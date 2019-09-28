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
end
