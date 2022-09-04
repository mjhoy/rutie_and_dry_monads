# frozen_string_literal: true

require 'test_helper'

class BaseTest < Minitest::Test
  def test_works
    assert_equal 'foo!', RutieExample.foo('z')
  end
end
