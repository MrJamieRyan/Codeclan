require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class TestFish < Minitest::Test
  def setup
  		@fish1 = Fish.new("Fish1")
  	end

    def setup
    @fish1 = Fish.new('Fish1')
  end

  def test_fish_name
    assert_equal('Fish1', @fish1.name)
  end

  end
