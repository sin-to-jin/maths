#!/usr/bin/ruby
require 'optparse'
OPTIONS = {}
parser = OptionParser.new
parser.version = '0.0.1'
parser.on('-a max', '--max') {|v| OPTIONS[:max] = v.to_i}
parser.parse!(ARGV)

class PrimeNumbers
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

class GoldbachsConjecture
  attr_accessor :formulas
  def initialize(max)
    @pn = PrimeNumbers.new(max)
    formula!
    build!
  end

  def formula!
    @formulas = [*1..pn.max].each_with_object([]) { |i, f| pn.primes.each { |n| f << Formula.new(i, n) } if i > 2 }
  end

  private
  attr_reader :pn

  def build!
    @formulas.select! { |v| v.answer.even? && v.right <= v.answer && (v.answer == 4 || v.right <= v.answer / 2) }
  end
end
