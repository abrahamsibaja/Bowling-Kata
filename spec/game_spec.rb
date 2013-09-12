system('clear')
require 'spec_helper'

module Bowling
  describe Game do
    let(:game) {Game.new}

    describe "canRoll" do
      it "rolls" do
        game.roll(0)
      end
    end

    describe "gutterGame" do
      it "makes a gutterGame" do
        20.times {game.roll(0)}
        game.score.should == 0
      end
    end

    describe "allOnesGame" do
      it "makes an allOnesGame" do
        20.times {game.roll(1)}
        game.score.should == 20
      end
    end
  end
end
