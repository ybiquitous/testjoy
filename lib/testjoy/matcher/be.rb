# frozen_string_literal: true

module Testjoy
  module Matcher
    class Be < Base
      attr_reader :expected

      def initialize(expected)
        super()
        @expected = expected
      end

      def match?(actual)
        expected.equal?(actual)
      end

      def message_on_mismatch(actual)
        <<~MSG
          expected: #{expected.inspect}
            actual: #{actual.inspect}
        MSG
      end
    end
  end
end
