# frozen_string_literal: true

require 'pry'
require_relative '../fibonacci'

RSpec.describe Fibonacci do
  let(:fibonacci) { Fibonacci.new }

  describe 'fib' do
    it 'should return the correct number in the Fibonacci sequence that corresponds to the index of the num argument' do
      expect(fibonacci.fib(0)).to eq 0
      expect(fibonacci.fib(2)).to eq 1
      expect(fibonacci.fib(5)).to eq 5
      expect(fibonacci.fib(10)).to eq 55
      expect(fibonacci.fib(20)).to eq 6765
    end
  end
end
