#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'test/unit'

# See a description of the problem at
# http://blog.codility.com/2011/03/solutions-for-task-equi.html

def equi(a)
  ## Array -> Int
  index = a.length-1
  while index > 0
    if a[0..index-1].reduce(:+) == a[index+1..a.length-1].reduce(:+)
      return index
    end
    index -= 1
  end
  -1
end

class TestEqui < Test::Unit::TestCase
  def test_01
    sample_array = [-7, 1, 5, 2, -4, 3, 0]
    expected = equi(sample_array)
    assert_equal expected, 3
  end
  def test_02
    sample_array = [1, 2, 3, 4, 3, 2, 1]
    expected = equi(sample_array)
    assert_equal expected, 3
  end
end
