system('clear')
require 'spec_helper'

module Bowling
  describe Game do
    describe "canCreateGame" do
      it "createsNewGame" do
        game = Game.new
      end
      describe "canRoll" do
        it "rolls" do
          game = Game.new
          game.roll(0)
        end
      end
    end
  end
end
