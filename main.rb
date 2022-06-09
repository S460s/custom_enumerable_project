class Array
  def my_each
    length.times { |i| yield(self[i]) }
    self
  end
end
