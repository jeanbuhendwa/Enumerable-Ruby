require_relative 'enumerable'
class MyList
  include MyEnumerable
  def initialize(list)
    @list = list
  end

  def each
    count = 0
    while count < @list.length
      yield @list[count] if block_given?
      count += 1
    end
  end
end
