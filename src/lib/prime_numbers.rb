#!/usr/bin/ruby

module PrimeNumbers
  class Values
    attr_reader :max, :primes
    def initialize(max)
      @max = max
      primes!
    end

    def includes?(array)
      (primes & array).length == array.uniq.length
    end

    private

    def primes!
      @primes ||= []
      [*1..max].each do |i|
        next if i < 2 || i.even?
        @primes << i if prime?(i)
      end if max > 1
    end

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

    def to_s
      "#{answer} = #{left} + #{right}"
    end

    def even_uniq!
      answer.even? && right <= answer && right <= answer / 2
    end
  end
end

