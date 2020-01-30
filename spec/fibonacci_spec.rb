# frozen_string_literal: true

require 'pry'
require_relative '../fibonacci'

RSpec.describe Fibonacci do
  let(:fibonacci) { Fibonacci.new }

  describe '#iterative_fib' do
    it 'should return the correct number in the Fibonacci sequence that corresponds to the index of the num argument' do
      expect(fibonacci.iterative_fib(0)).to eq 0
      expect(fibonacci.iterative_fib(2)).to eq 1
      expect(fibonacci.iterative_fib(5)).to eq 5
      expect(fibonacci.iterative_fib(10)).to eq 55
      expect(fibonacci.iterative_fib(20)).to eq 6765
    end
  end

  describe '#recursive_fib' do
    it 'should return the correct number in the Fibonacci sequence that corresponds to the index of the num argument' do
      expect(fibonacci.recursive_fib(0)).to eq 0
      expect(fibonacci.recursive_fib(2)).to eq 1
      expect(fibonacci.recursive_fib(5)).to eq 5
      expect(fibonacci.recursive_fib(10)).to eq 55
      expect(fibonacci.recursive_fib(20)).to eq 6765
    end
  end

  describe '#recursive_fib_with_cache' do
    it 'should return the correct number in the Fibonacci sequence that corresponds to the index of the num argument' do
      expect(fibonacci.recursive_fib_with_cache(0)).to eq 0
      expect(fibonacci.recursive_fib_with_cache(2)).to eq 1
      expect(fibonacci.recursive_fib_with_cache(5)).to eq 5
      expect(fibonacci.recursive_fib_with_cache(10)).to eq 55
      expect(fibonacci.recursive_fib_with_cache(20)).to eq 6765
    end
  end
end
