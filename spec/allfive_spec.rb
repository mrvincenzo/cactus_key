require 'spec_helper'
require 'benchmark'

describe AllFive do
  before(:each) do
    @af = AllFive.new
    @deck = @af.init_deck
  end

  it "should initialize deck" do
    @deck.should == [98306, 164099, 295429, 557831, 1082379, 2131213, 4228625, 8423187,
                    16812055, 33589533, 67144223, 134253349, 268471337, 81922, 147715, 279045,
                    541447, 1065995, 2114829, 4212241, 8406803, 16795671, 33573149, 67127839,
                    134236965, 268454953, 73730, 139523, 270853, 533255, 1057803, 2106637,
                    4204049, 8398611, 16787479, 33564957, 67119647, 134228773, 268446761,
                    69634, 135427, 266757, 529159, 1053707, 2102541, 4199953, 8394515, 16783383,
                    33560861, 67115551, 134224677, 268442665]
  end

  it "should evaluate 5 card frequency" do
    @af.five_card_frequency.should == [40, 624, 3744, 5108, 10200, 54912, 123552, 1098240, 1302540]
  end
end