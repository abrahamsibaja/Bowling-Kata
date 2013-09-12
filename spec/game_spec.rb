system('clear')
require 'spec_helper'

describe "#Game" do
  context "canCreateGame" do
    it "createsNewGame" do
      game = Game.new
    end
  end
end
