require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup
    @bear = Bear.new('Fluffy', 'Brown')

    @fish = [@fish1]

    @fish1 = Fish.new('Fish1')

    @river =River.new("Water of Leith", @fish)
  end

  def test_does_river_have_name
    assert_equal('Underground', @river1.name)
  end

  def test_river_fish_count
    assert_equal(1, @river.fish_count)
  end

  def test_river_lost_fish
    @river.lose_fish
    assert_equal(0, @river.fish_count)
  end


end
