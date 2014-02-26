def merge_sort(list)
  return list if list.size <= 1

  middle = list.size / 2
  left = list[0,middle]
  right = list[middle..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

randomarray = (0...10000).to_a.sample 10
p merge_sort(randomarray)


#### Benchmarking tests
# require 'benchmark'

# slower = Benchmark.realtime do
# randomarray1 = (0...1000000).sort_by{rand}[0...10]
# p randomarray1
# end
# puts slower


# faster = Benchmark.realtime do
# randomarray = (0...1000000).to_a.sample 10
# p randomarray
# end
# puts faster
