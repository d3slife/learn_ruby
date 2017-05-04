class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds_formatted = @seconds % 60
    minutes_formatted = @seconds / 60 % 60
    hours_formatted = @seconds / 60 / 60 % 24
    sprintf("%02d:%02d:%02d", hours_formatted, minutes_formatted, seconds_formatted)
  end
end
