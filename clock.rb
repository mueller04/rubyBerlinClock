require_relative 'clock_lamps'

class Clock

  YELLOW_LIGHTS = "YYYY"
  RED_LIGHTS = "RRRR"
  MIXED_LIGHTS = "YYRYYRYYRYY"

  def convert_to_berlin_clock(hour, minute, second)

      single_minute_lights_on = get_single_lights_on(minute)
      single_hour_lights_on = get_single_lights_on(hour)
      five_minute_lights_on = get_five_lights_on(minute)
      five_hour_lights_on = get_five_lights_on(hour)

      single_minute_lights = get_lights_for_row(YELLOW_LIGHTS, single_minute_lights_on)
      single_hour_lights = get_lights_for_row(RED_LIGHTS, single_hour_lights_on)
      five_minute_lights = get_lights_for_row(MIXED_LIGHTS, five_minute_lights_on)
      five_hour_lights = get_lights_for_row(RED_LIGHTS, five_hour_lights_on)

      clock_lamps = ClockLamps.new(single_minute_lights,
      five_minute_lights,
      single_hour_lights,
      five_hour_lights)
      return clock_lamps

  end

private

  def get_single_lights_on(unit)
      unit % 5
  end

  def get_five_lights_on(unit)
      unit / 5
  end

  def get_lights_for_row(light_pattern, number_lights)
      return switch_lights_on(light_pattern, number_lights)+ pad_lights_right(light_pattern, number_lights)
  end

  def switch_lights_on(light_pattern, number_lights)
    light_pattern[0,number_lights]
  end

  def pad_lights_right(light_pattern, current_length)
      length_to_pad = light_pattern.length - current_length
      "O" * length_to_pad
  end


end
