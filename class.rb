require_relative 'module'

class MyList
  include MyEnumerable

  def initialize(*value)
    @list = value
  end

  def each
    0.upto(@list.length - 1) do |i|
      yield @list[i]
    end
  end
end

list = MyList.new(1, 2, 3, 4)
p list

# Test #all?
p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })

# Test #any?
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })

# Test #filter
p list.filter(&:even?)
