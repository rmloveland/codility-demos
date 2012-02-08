#!/usr/bin/env ruby

require 'test/unit'

def number_of_disc_intersections(a)
  index = 0
  len = a.length - 1
  pairs = []
  while index < len
    first, rest = a[index], a[index+1..len]
    for i in index+1..len
      val = a[i]
      score = val - i
      if index + first >= i - val
        pairs.push([index, i])
      end
    end
    index += 1
  end
  pairs.length
end

class TestDiscIntersections < Test::Unit::TestCase
  def test_01
    sample = [1, 5, 2, 1, 4, 0]
    expected = number_of_disc_intersections(sample)
    assert_equal expected, 11
  end
end
