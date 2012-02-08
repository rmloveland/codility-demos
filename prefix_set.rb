#!/usr/bin/env ruby

require 'test/unit'

def ps(a)
  index = 0
  len = a.length-1
  first = {}
  second = {}
  a.each { |elem| first[elem] = 1 }
  while index < len
    second[a[index]] = 1
    if first.keys.length == second.keys.length
      return index
    end
    index += 1
  end
  -1
end

class TestPrefixSet < Test::Unit::TestCase
  def test_01
    sample = [2, 2, 1, 0, 1]
    expected = ps(sample)
    assert_equal expected, 3
  end
  def test_02
    sample = [1, 32, 66, 7, 99, 66, 32, 7]
    expected = ps(sample)
    assert_equal expected, 4
  end
end
