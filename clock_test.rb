require_relative 'clock'
require 'test/unit'

class ClockTest < Test::Unit::TestCase

  def test_OOOO_returned_for_0_minutes
      clock = Clock.new
      time = Time.new(2016, 5, 15, 0, 0, 0)
      result = clock.calculate_time
      assert_equal("OOOO", result)
  end

end
