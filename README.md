# custom_enumerable_project


  def my_all?
    flag = true
    length.times do |i|
      unless yield self[i]
        flag = false
        break
      end
    end
    flag
  end