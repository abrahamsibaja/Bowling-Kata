system('clear')
require 'spec_helper'

module Bowling
  describe Game do
    let(:game) {Game.new}

    def rollMany (n, pins)
      n.times {game.roll(pins)}
    end

    def rollSpare
      game.roll(5)
      game.roll(5)
    end

    def rollStrike
      game.roll(10)
      game.roll(3)
    end

    describe "canRoll" do
      it "rolls" do
        game.roll(0)
      end
    end

    describe "gutterGame" do
      it "makes a gutterGame" do
        rollMany(20, 0)
        game.score.should == 0
      end
    end

    describe "allOnesGame" do
      it "makes an allOnesGame" do
        rollMany(20, 1)
        game.score.should == 20
      end
    end

    describe "oneSpare" do
      it "makes a spare" do
        rollSpare
        game.roll(3)
        rollMany(17, 0)
        game.score.should == 16
      end
    end

    describe "oneStrike" do
      it "makes a strike" do
        rollStrike
        game.roll(4)
        rollMany(16, 0)
        game.score.should == 24
      end
    end

    describe "perfectGame" do
      it "makes a perfect game" do
        rollMany(12, 10)
        game.score.should == 300
      end
    end

  end
end
