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
end
