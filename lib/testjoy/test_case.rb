# frozen_string_literal: true

module Testjoy
  class TestCase
    attr_reader :description

    def initialize(description)
      @description = description
    end

    def run(&block)
      instance_eval(&block)
    end

    def expect(actual)
      Expectation.new(actual)
    end

    def be(expected)
      Matcher::Be.new(expected)
    end
  end
end
