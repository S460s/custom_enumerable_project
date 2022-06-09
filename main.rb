class Array
  def my_each
    length.times { |i| yield(self[i]) }
    self
  end
end

module Enumerable
  def my_each_with_index
    length.times { |i| yield(self[i], i) }
    self
  end

  def my_all?
    for i in 0...length
      return false unless yield self[i]
    end
    true
  end

  def my_all?
    for i in 0...length
      return true if yield self[i]
    end
    false
  end

  def my_none?
    for i in 0...length
      return false if yield self[i]
    end
    true
  end
end
