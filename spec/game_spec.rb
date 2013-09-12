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
      it "does a gutterGame" do
        20.times do game.roll(0)
        end
        0 == game.score
      end
    end
  end
end
