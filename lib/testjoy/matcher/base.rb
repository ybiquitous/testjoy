# frozen_string_literal: true

module Testjoy
  module Matcher
    class Base
      def match?(actual)
        raise NotImplementedError
      end

      def message_on_mismatch(actual)
        raise NotImplementedError
      end
    end
  end
end
