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
  end
end
