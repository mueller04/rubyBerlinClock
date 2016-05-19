require_relative 'clock'
require 'test/unit'

class FiveMinuteTest < Test::Unit::TestCase

  def setup
    @clock = Clock.new
  end

  def test_fiveminuterow_OOOOOOOOOOO_returns_for_0_minutes
    @clock.set_time(0,0,0)

    result = @clock.calculate_time


    assert_equal("OOOOOOOOOOO", result.five_minute_row)
  end

  def test_fiveminuterow_YYOOOOOOOOO_returns_for_12_minutes
    @clock.set_time(0,12,0)

    result = @clock.calculate_time

    assert_equal("YYOOOOOOOOO", result.five_minute_row)
  end

  def test_fiveminuterow_YYROOOOOOOO_returns_for_16_minutes
    @clock.set_time(0,16,0)

    result = @clock.calculate_time

    assert_equal("YYROOOOOOOO", result.five_minute_row)
  end

  def test_fiveminuterow_YYRYYRYYRYY_returns_for_59_minutes
    @clock.set_time(0,59,0)

    result = @clock.calculate_time

    assert_equal("YYRYYRYYRYY", result.five_minute_row)
  end

end
