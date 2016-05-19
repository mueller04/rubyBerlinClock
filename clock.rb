require_relative 'clock_lamps'

class Clock

  FOUR_LIGHT_ROW = 4
  ELEVEN_LIGHT_ROW = 11
  YELLOW_LIGHTS = "YYYY"
  RED_LIGHTS = "RRRR"
  MIXED_LIGHTS = "YYRYYRYYRYY"

  def convert_to_berlin_clock(hour, minute, second)

      single_minute_row = minute % 5
      five_minute_row = minute / 5
      single_hour_row = hour
      five_hour_row = hour / 5
      # p
      # p "foo #{five_hour_row}"

      single_minute_lights = get_lights_for_row(YELLOW_LIGHTS, single_minute_row, FOUR_LIGHT_ROW)
      single_hour_lights = get_lights_for_row(RED_LIGHTS, single_hour_row, FOUR_LIGHT_ROW)
      five_minute_lights = get_lights_for_row(MIXED_LIGHTS, five_minute_row, ELEVEN_LIGHT_ROW)
      five_hour_lights = get_lights_for_row(RED_LIGHTS, five_hour_row, FOUR_LIGHT_ROW)


      # p "foo2 #{five_hour_row}"
      # p "foo2 #{five_hour_row}"


      # STDOUT.flush
      # p "foo2 #{five_hour_row}"
      # p "foo2 #{five_hour_row}"

      clock_lamps = ClockLamps.new(single_minute_lights,
      five_minute_lights,
      single_hour_lights,
      five_hour_lights)
      return clock_lamps

  end

private

  def get_lights_for_row(light_pattern, number_lights, desired_length)
      return switch_lights_on(light_pattern, number_lights)+ pad_lights_right(desired_length, number_lights)
  end

  def switch_lights_on(light_pattern, number_lights)
    light_pattern[0,number_lights]
  end

  def pad_lights_right(desired_length, current_length)
    # p "desired length = #{desired_length} minus #{current_length}"

      length_to_pad = desired_length - current_length
      # p length_to_pad
      "O" * length_to_pad
  end


end
