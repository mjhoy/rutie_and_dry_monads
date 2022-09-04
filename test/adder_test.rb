# frozen_string_literal: true

require 'test_helper'

class AdderTest < UnitTest
  def test_works
    assert_equal Success(2), Adder.add(1, 1)
    assert_equal Success(5), Adder.add(5, 0)
    assert_equal Failure("You can't add that."), Adder.add(665, 1)
  end
end
