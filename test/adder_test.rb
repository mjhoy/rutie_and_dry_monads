# frozen_string_literal: true

require 'test_helper'

class AdderTest < UnitTest
  def test_adds_successfully
    assert_equal Success(2), Adder.add(1, 1)
    assert_equal Success(5), Adder.add(5, 0)
  end

  def test_fails_to_return_666
    assert_equal Failure("You can't add that."), Adder.add(665, 1)
  end

  def test_checks_types_args
    err = assert_raises(TypeError) do
      Adder.add('one', 'two')
    end
    assert_equal('Error converting to Fixnum', err.message)
  end

  def test_checks_args_present
    err = assert_raises(ArgumentError) do
      Adder.add(1)
    end
    assert_equal("Argument 'b: Fixnum' not found for method 'pub_add'", err.message)
  end
end
