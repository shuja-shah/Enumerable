require_relative 'enumerable'

class List
  @list = []
  include Enumberable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    counter = 0
    while counter < @list.length
      block.call(@list[counter])
      counter += 1
    end
  end
end

## TESTS

list = List.new([1, 2, 3, 4, 5])
list.all? { |i| i < 6 } # => true
list.any? { |i| i < 2 } # => true
list.filter { |i| i < 3 } # => [1,2]
