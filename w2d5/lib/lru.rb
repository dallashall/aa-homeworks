require "byebug"
class LRUCache
  def initialize(size = 4)
    @cache = []
    @size = size
    @count = 0
  end

  def count
    @count
  end

  def add(el)
    # byebug
    if include?(el)
      move_to_back(el)
    elsif full?
      remove_lru
      add_new(el)
    else
      add_new(el)
    end
  end

  def show
    @cache.dup
  end

  private
  # helper methods go here!
  def include?(el)
    @cache.include?(el)
  end

  def full?
    @count == @size
  end

  def move_to_back(el)
    @cache.delete_at(@cache.index(el))
    @cache.push(el)
  end

  def remove_lru
    @cache.shift
    @count -= 1
  end

  def add_new(el)
    @count += 1
    @cache.push(el)
  end
end
