class LinkedList
  def initialize
    # @head = Link.new(nil)
    # @tail = Link.new(nil, @head)
    # @head.set_nxt(@tail)
    @sentinel_link = Link.new(nil)
    @sentinel_link.set_prev(@sentinel_link)
    @sentinel_link.set_nxt(@sentinel_link)
  end

  def head
    @sentinel_link.nxt
  end

  def tail
    @sentinel_link.prev
  end

  def push(val)
    old_nxt = @sentinel_link.nxt
    new_link = Link.new(val, @sentinel_link, old_nxt)
    @sentinel_link.set_nxt(new_link)
    old_nxt.set_prev(new_link)
  end

  def shift
    @sentinel_link.prev.
  end

end
