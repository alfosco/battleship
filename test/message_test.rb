require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'

class MessageTest < Minitest::Test

  def test_it_exists
    assert_equal Module, Message.class
  end

end