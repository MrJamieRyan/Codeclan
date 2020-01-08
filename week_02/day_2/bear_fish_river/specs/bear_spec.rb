require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new('Fluffy', 'Brown')

    @fish1 = Fish.new('Fish1')
  end

  def test_bear_name
    assert_equal('Fluffy', @bear.name)
  end

  def test_fish_count
    assert_equal(0, @bear.count_fish_in_stomach)
  end

  def test_add_fish
    @bear.add_fish(@fish1)
    assert_equal(1, @bear.count_fish_in_stomach)
  end

  def test_does_bear_growl
    assert_equal('growl', @bear.growl)
  end

end
