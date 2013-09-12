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
        if isStrike(firstInFrame)
          @score += 10 + nextTwoBallsForStrike(firstInFrame)
          firstInFrame += 1
        elsif isSpare(firstInFrame)
          @score += 10 + nextBallForSpare(firstInFrame)
          firstInFrame += 2
        else 
          @score += twoBallsInFrame(firstInFrame)
          firstInFrame += 2
        end
      end
      return @score
    end

private
    def isSpare(firstInFrame)
      @rolls[firstInFrame] + @rolls[firstInFrame+1] == 10
    end

    def isStrike(firstInFrame)
      @rolls[firstInFrame] == 10
    end

    def nextTwoBallsForStrike(firstInFrame)
      @rolls[firstInFrame+1] + @rolls[firstInFrame+2]
    end

    def nextBallForSpare(firstInFrame)
      @rolls[firstInFrame+2]
    end

    def twoBallsInFrame(firstInFrame)
      @rolls[firstInFrame] + @rolls[firstInFrame+1]
    end
  end
end
