class ClockLamps

  attr_accessor :single_minute_row
  attr_accessor :five_minute_row
  attr_accessor :single_hour_row


  def initialize(single_minute, five_minute, single_hour)
    @single_minute_row = single_minute
    @five_minute_row = five_minute
    @single_hour_row = single_hour
  end
end
