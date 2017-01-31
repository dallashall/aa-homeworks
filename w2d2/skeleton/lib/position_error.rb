class PositionError < StandardError
  def initialize(msg, pos)
    puts "#{pos} is #{msg}. Valid positions are beteen [0-5] or [7-12] (inclusive)."
  end
end
