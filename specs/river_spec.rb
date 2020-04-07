require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test 

    def setup()
        @river = River.new("Amazon", ["Carp", "Bream", "Roach", "Pike", "Trout"])
    end

    def test_name_of_river
        assert_equal("Amazon", @river.name())
    end

    def test_number_of_fish_in_river
        assert_equal(5, @river.number_of_fish_in_river.count)
    end




end