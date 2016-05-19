require_relative 'clock'
require 'test/unit'

class FiveHourTest < Test::Unit::TestCase

  def setup
    @clock = Clock.new
  end

  def test_OOOO_returns_for_0_hours
    @clock.set_time(0,0,0)

    result = @clock.calculate_time

    assert_equal("OOOO", result.five_hour_row)
  end

  # def test_ROOO_returns_for_1_hours
  #   @clock.set_time(5,0,0)
  #
  #   result = @clock.calculate_time
  #
  #   assert_equal("ROOO", result.five_hour_row)
  # end

end
