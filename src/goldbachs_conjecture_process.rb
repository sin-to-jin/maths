#!/usr/bin/ruby

require_relative './lib/prime_numbers'

class GoldbachsConjecture
  include PrimeNumbers
  attr_accessor :formulas

  def initialize(max)
    @pn = Values.new(max)
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
