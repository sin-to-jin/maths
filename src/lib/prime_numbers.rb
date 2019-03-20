#!/usr/bin/ruby

module PrimeNumbers
  class Values
    attr_reader :max, :half, :primes
    def initialize(max)
      @max = max
      @primes = []
      build
    end

    def build
      [*1..max].each do |i|
        next if i < 2 || i.even?
        primes << i if prime?(i)
      end
    end

    private

    def prime?(x)
      [*2..(x-1)].each { |i| return false if (x % i.to_f).zero? }
    end
  end

  class Formula
    attr_accessor :answer, :left, :right
    def initialize(a, m)
      @answer = a
      @left = a - m
      @right = m
    end

    def vals
      "#{answer} = #{left} + #{right}"
    end
  end
end
