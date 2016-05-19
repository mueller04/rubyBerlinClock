require_relative 'clock'
require 'test/unit'

class SingleMinuteTest < Test::Unit::TestCase

  def setup
    @clock = Clock.new
  end

  def test_OOOO_returns_for_0_minutes

      result = @clock.convert_to_berlin_clock(0,0,0)

      assert_equal("OOOO", result.single_minute_row)
  end

  def test_YOOO_returns_for_1_minutes

      result = @clock.convert_to_berlin_clock(0,1,0)

      assert_equal("YOOO", result.single_minute_row)
  end

  def test_YYYO_returns_for_3_minutes

      result = @clock.convert_to_berlin_clock(0,3,0)

      assert_equal("YYYO", result.single_minute_row)
  end

  def test_YYYY_returns_for_4_minutes

      result = @clock.convert_to_berlin_clock(0,4,0)

      assert_equal("YYYY", result.single_minute_row)
  end

  def test_OOOO_returns_for_5_minutes

      result = @clock.convert_to_berlin_clock(0,5,0)

      assert_equal("OOOO", result.single_minute_row)
  end








end
