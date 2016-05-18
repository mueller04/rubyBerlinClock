class ClockLamps

  attr_accessor :single_minute_row
  attr_accessor :five_minute_row

  def initialize(single_minute, five_minute)
    @single_minute_row = single_minute
    @five_minute_row = five_minute
  end
end
