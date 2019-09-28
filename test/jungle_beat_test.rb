require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test
  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists
    assert_instance_of JungleBeat, @jb
  end

  def test_attributes
    assert_instance_of LinkedList, @jb.list
    assert_nil @jb.list.head
  end

  def test_append
    @jb.append('deep doo ditt')

    assert_equal 'deep', @jb.list.head.sound
    assert_equal 'doo', @jb.list.head.next_node.sound
  end

  def test_count
    @jb.append('deep doo ditt')
    @jb.append("woo hoo shu")

    assert_equal 6, @jb.count
  end

  def test_play
    @jb.append("deep doo ditt woo hoo shu")

    assert_equal 6, @jb.count
    assert_equal 6, @jb.list.count

    assert_equal "", @jb.play
  end

  def test_append_with_constraint
    jb = JungleBeat.new
    jb.append('deep')
    jb.append("Mississippi")

    assert_equal 'deep', jb.all
  end

  def test_prepend_only_valid_beats
    jb = JungleBeat.new
    jb.append('deep')

    assert_equal 3, jb.prepend("tee tee tee Mississippi")
    assert_equal "tee tee tee deep", jb.all
  end
end
