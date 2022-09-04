# frozen_string_literal: true

require 'rutie_and_dry_monads/version'
require 'dry/monads/result'
require 'rutie'

module RutieAndDryMonads
  Rutie.new(:rutie_and_dry_monads).init 'Init_rutie_and_dry_monads', __dir__
end
