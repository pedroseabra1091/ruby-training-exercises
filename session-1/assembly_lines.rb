class AssemblyLine
  CARS_PER_HOUR = 221
  LOW_SPEED_SUCCESS_RATE = 1
  UPPER_LOW_SPEED_SUCCESS_RATE = 0.9
  MID_SPEED_SUCCESS_RATE = 0.8
  HIGH_SPEED_SUCCESS_RATE = 0.77

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 1..4
      CARS_PER_HOUR * @speed
    when 5..8
      CARS_PER_HOUR * @speed * UPPER_LOW_SPEED_SUCCESS_RATE
    when 9
      CARS_PER_HOUR * @speed * MID_SPEED_SUCCESS_RATE
    when 10
      CARS_PER_HOUR * @speed * HIGH_SPEED_SUCCESS_RATE
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
