module Bowling
  class Game

    def initialize
      @rolls = Array.new(21)
      @frames = 10
      @currentRoll = 0
    end

    def roll(pins)
      @rolls[@currentRoll] = pins
      @currentRoll += 1
    end

    def score
      @score = 0
      @frames.times {|i| @score += @rolls[i*2] + @rolls[i*2 + 1]}
      return @score
    end
  end
end
