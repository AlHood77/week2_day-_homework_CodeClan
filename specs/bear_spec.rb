require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test 

    def setup()
        @bear = Bear.new("Yogi", "Grizzly")
        @fish1 = Fish.new("Carp")
        @fish2 = Fish.new("Bream")
        @fish3 = Fish.new("Roach")
        @fish4 = Fish.new("Pike")
        @fish5 = Fish.new("Trout")
        @river = River.new("Amazon", [@fish1, @fish2, @fish3, @fish4, @fish5])
    end

    def test_name_of_bear()
        assert_equal("Yogi", @bear.name)
    end

    def test_type_of_bear()
        assert_equal("Grizzly", @bear.type_of_bear)
    end

    def test_bear_starts_with_empty_stomach()
        assert_equal(0, @bear.bear_stomach.count)
    end

    def test_river_starts_with_a_number_of_fish()
        assert_equal(5, @river.count)
    end





end