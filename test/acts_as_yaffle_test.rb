require 'test_helper'

class ActsAsYaffleTest < ActiveSupport::TestCase
  test " a hickwalls yaffe text field should be last squwak" do
    assert_equal "last_squawk", Hickwall.yaffle_text_field
  end

  test " a wickwalls yaffle text field should be last tweet" do
    assert_equal "last_tweet", Wickwall.yaffle_text_field
  end

  test " hickwalls squawk should populate last squawk" do
    hickwall = Hickwall.new
    hickwall.squawk("Hello World")
    assert_equal "squawk! Hello World", hickwall.last_squawk
  end

  test "wickwall squawk should populate last tweek" do
    wickwall = Wickwall.new
    wickwall.squawk("Hello World")
    assert_equal "squawk! Hello World", wickwall.last_tweet
  end
end
