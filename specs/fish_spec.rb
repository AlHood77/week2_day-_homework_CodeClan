require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class FishTest < MiniTest::Test 

    def setup ()
        @fish = Fish.new(["Carp", "Bream", "Roach", "Pike", "Trout"])
    end

    def test_name_of_fish_in_river
        assert_equal(5, @fish.name_of_fish.count)
    end


end