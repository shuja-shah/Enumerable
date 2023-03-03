require_relative 'enumerable'

class List
  @list = []
  include Enumberable

  def initialize(list)
    @list = list
  end

  def each(&list)
    @list.each(&list)
  end
end

## TESTS

list = List.new([1, 2, 3, 4, 5])
puts list.all? { |i| i < 6 } # => true
puts list.any? { |i| i < 2 } # => true
puts list.filter { |i| i < 3 } # => [1,2]
