$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'bundler/setup'
require 'dry/monads'
require 'rutie_and_dry_monads'
require 'minitest/autorun'
require 'minitest/pride'

class UnitTest < Minitest::Test
  include Dry::Monads[:result]
end
