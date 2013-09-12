module Bowling
  class Game

    def initialize
      @rolls = Array.new(21)
      @currentRoll = 0
    end

    def roll(pins)
      @rolls[@currentRoll] = pins
      @currentRoll += 1
    end

    def score
      @score = 0
      @rolls.map {|i| @score += i.to_i}
      return @score
    end
  end
end
