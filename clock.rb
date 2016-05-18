require_relative 'clock_lamps'

class Clock

  def set_time(hour, minute, second)
    @hour = hour
    @minute = minute
    @second = second
  end

  def calculate_time

      single_minute_row = @minute % 5
      five_minute_row = @minute / 5

      single_minute_lights = ""

      unless single_minute_row > 4
        # this gets an error ask Rauh
        # single_minute_lights = (single_minute_row * "Y").to_s

        single_minute_row.times do
            single_minute_lights += "Y"
        end
      end

      while single_minute_lights.length < 4
          single_minute_lights += "O"
      end

    five_minute_row = "OOOOOOOOOOO"
    clock_lamps = ClockLamps.new(single_minute_lights, five_minute_row)
    return clock_lamps

  end


end
