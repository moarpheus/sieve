require "byebug"

class Sieve
  def initialize number
    @number = number
    @range = (2..number).to_a
  end

  def primes
    return [] unless @number >= 2
    composites = []
    @range.each do |number|
      (number..@number).to_a.each do |num|
        composites << number * num
      end
    end
    @range - composites
  end
end
