class Stack # :nodoc:
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue # :nodoc:
  def initialize
    @queue = []
  end

  def enqueue(el)
    @stack << el
  end

  def dequeue
    @stack.shift
  end
end

class Map # :nodoc:
  def initialize
    @map = []
  end

  def add(key, val)
    idx = idx_of(key)
    if idx
      @map[idx] = [key, val]
    else
      @map << [key, val]
    end
  end

  def lookup(key)
    idx = idx_of(key)
    idx ? @map[idx] : idx
  end

  def idx_of(key)
    @map.each_index { |idx| return idx if @map[idx] == key }
    nil
  end
end
