#!/usr/bin/ruby

module PrimeNumbers
  class Values
    attr_reader :max, :primes
    def initialize(max)
      @max = max
      primes! if max > 1
    end

    def includes?(array)
      @primes ||= []
      (primes & array).length == array.uniq.length
    end

    private

    def primes!
      @primes ||= []
      [*1..max].each do |i|
        next if i < 2 || i.even?

        @primes << i if prime?(i)
      end
    end

    def prime?(value)
      [*2..(value - 1)].each { |i| return false if (value % i.to_f).zero? }
    end
  end

  class Formula
    attr_accessor :answer, :left, :right
    def initialize(answer, right)
      @answer = answer
      @left = answer - right
      @right = right
    end

    def to_s
      "#{answer} = #{left} + #{right}"
    end

    def even_uniq!
      answer.even? && right <= answer && right <= answer / 2
    end
  end
end
