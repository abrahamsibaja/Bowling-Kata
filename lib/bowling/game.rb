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
      frames = 10
      @score = 0
      i = 0
      frames.times do
        if @rolls[i] + @rolls[i+1] == 10
          @score += 10 + @rolls[i+2]
          i += 2
        else 
          @score += @rolls[i] + @rolls[i+1]
          i += 2
        end
      end
      return @score
    end
  end
end
