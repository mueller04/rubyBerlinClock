require_relative 'clock'
require 'test/unit'

class FiveMinuteTest < Test::Unit::TestCase

  def setup
    @clock = Clock.new
  end

  def test_fiveminuterow_OOOOOOOOOOO_returns_for_0_minutes

    result = @clock.convert_to_berlin_clock(0,0,0)


    assert_equal("OOOOOOOOOOO", result[:five_minute])
  end

  def test_fiveminuterow_YYOOOOOOOOO_returns_for_12_minutes

    result = @clock.convert_to_berlin_clock(0,12,0)

    assert_equal("YYOOOOOOOOO", result[:five_minute])
  end

  def test_fiveminuterow_YYROOOOOOOO_returns_for_16_minutes

    result = @clock.convert_to_berlin_clock(0,16,0)

    assert_equal("YYROOOOOOOO", result[:five_minute])
  end

  def test_fiveminuterow_YYRYYRYYRYY_returns_for_59_minutes

    result = @clock.convert_to_berlin_clock(0,59,0)

    assert_equal("YYRYYRYYRYY", result[:five_minute])
  end

end
