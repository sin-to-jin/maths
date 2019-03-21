#!/usr/bin/ruby

require_relative './lib/prime_numbers'

class GoldbachsConjecture
  include PrimeNumbers
  attr_accessor :formulas

  def initialize(max)
    @pnb = Values.new(max)
    formula!
  end

  private

  attr_reader :pnb

  def formula!
    @formulas = [*1..pnb.max].each_with_object([]) do |i, f|
      pnb.primes.each { |n| f << GoldbachsFormula.new(pnb, i, n) } if i > 2
    end.select!(&:goldbachs)
  end

  class GoldbachsFormula < Formula
    attr_accessor :pnb

    def initialize(pnb, answer, right)
      @pnb = pnb
      super answer, right
    end

    def goldbachs
      even_uniq! && pnb.includes?([left, right])
    end
  end
end
