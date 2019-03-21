#!/usr/bin/ruby

require_relative './lib/prime_numbers'

class GoldbachsConjecture
  include PrimeNumbers
  attr_accessor :formulas

  def initialize(max)
    @pn = Values.new(max)
    formula!
  end

  private
  attr_reader :pn

  def formula!
    @formulas = [*1..pn.max].each_with_object([]) do |i, f|
      pn.primes.each { |n| f << GoldbachsFormula.new(pn, i, n) } if i > 2
    end.select!(&:goldbachs)
  end

  class GoldbachsFormula < Formula
    attr_accessor :pn

    def initialize(pn, a, m)
      @pn = pn
      super(a, m)
    end

    def goldbachs
      even_uniq! && pn.includes?([left, right])
    end
  end
end

