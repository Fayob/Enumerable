module MyEnumerable
  def all?
    return true unless block_given?

    each { |i| return false unless yield i }
    true
  end

  def any?
    each do |i|
      return true if yield(i)
    end
    false
  end

  def filter
    arr = []
    each { |i| arr.push(i) if yield(i) }
    arr
  end
end
