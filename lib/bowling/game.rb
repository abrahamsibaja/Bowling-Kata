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
      firstInFrame = 0
      frames.times do
        if isSpare(firstInFrame)
          @score += 10 + @rolls[firstInFrame+2]
          firstInFrame += 2
        else 
          @score += @rolls[firstInFrame] + @rolls[firstInFrame+1]
          firstInFrame += 2
        end
      end
      return @score
    end

    def isSpare(firstInFrame)
      @rolls[firstInFrame] + @rolls[firstInFrame+1] == 10
    end
  end
end
