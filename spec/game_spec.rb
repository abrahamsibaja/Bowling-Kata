system('clear')
require 'spec_helper'

describe "#Game" do
  context "canCreateGame" do
    it "createsNewGame" do
      game = Game.new
    end
  end
  context "canRoll" do
    it "rolls" do
      game = Game.new
      game.roll(0)
    end
  end
end
