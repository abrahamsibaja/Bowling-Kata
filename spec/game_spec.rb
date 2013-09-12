system('clear')
require 'spec_helper'

module Bowling
  describe Game do
    let(:game) {Game.new}

    def rollMany (n, pins)
      n.times {game.roll(pins)}
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
  end
end
