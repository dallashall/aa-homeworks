class Link
  attr_reader :prev, :nxt, :val
  def initialize(val, prev = nil, nxt = nil)
    @prev = prev
    @nxt = nxt
    @val = val
  end

  def set_prev(new_prev)
    @prev = new_prev
  end

  def set_nxt(new_nxt)
    @nxt = new_nxt
  end
end
