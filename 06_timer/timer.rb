class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end
  def time_string
    @hours = @seconds / 3600
    @minutes = (@seconds % 3600) / 60
    @seconds = @seconds % 60
    "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
  end
  def padded(number)
    "#{"%02d" % number}"
  end
end
