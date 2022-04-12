# frozen_string_literal: true

module Testjoy
  class Expectation
    class MismatchError < Error
    end

    attr_reader :actual

    def initialize(actual)
      @actual = actual
    end

    def to(matcher)
      unless matcher.match?(actual)
        raise MismatchError, matcher.message_on_mismatch(actual)
      end
    end
  end
end
