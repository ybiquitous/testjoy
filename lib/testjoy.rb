# frozen_string_literal: true

require_relative "testjoy/error"
require_relative "testjoy/expectation"
require_relative "testjoy/matcher"
require_relative "testjoy/test_case"
require_relative "testjoy/version"

module Testjoy
  def self.test(description, &block)
    TestCase.new(description).run(&block)
  end
end
