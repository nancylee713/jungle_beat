require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_new_returns_a_node
    obj = Node.new("plop")
    assert_instance_of Node, obj
  end
end
