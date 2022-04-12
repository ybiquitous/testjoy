# frozen_string_literal: true

require "spec_helper"

RSpec.describe Testjoy do
  it "has a version number" do
    rspec_expect(Testjoy::VERSION).not_to be_nil
  end

  it "provides a simple usecase" do
    rspec_expect {
      Testjoy.test "foo" do
        expect("".empty?).to be true
        expect("".empty?).to be false
      end
    }.to raise_error Testjoy::Expectation::MismatchError, <<~MSG
      expected: false
        actual: true
    MSG
  end
end
