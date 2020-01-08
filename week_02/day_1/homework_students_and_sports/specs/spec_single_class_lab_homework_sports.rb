require('minitest/autorun')
require('minitest/reporters')
require_relative('../single_class_lab_hw_sports.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSports < MiniTest::Test

def test_get_team_name
  the_club = Sports.new("Codeclan", ["Lauren", "Jamie"] ,"Alex")
  assert_equal("Codeclan", the_club.team)
end


def test_get_players
  the_club = Sports.new("Codeclan", ["Lauren", "Jamie"] ,"Alex")
  assert_equal(["Lauren", "Jamie"], the_club.players)
end

def test_get_coach_name
  the_club = Sports.new("Codeclan", ["Lauren", "Jamie"] ,"Alex")
  assert_equal("Alex", the_club.coach)
end

def test_get_new_coach_name
  the_club = Sports.new("Codeclan", ["Lauren", "Jamie"] ,"Alex")
  the_club.coach = "Billy"
  assert_equal("Billy", the_club.coach())
end

def test_new_player_to_team
  the_club = Sports.new("Codeclan", ["Lauren", "Jamie"] ,"Alex")
  the_club.new_player_added("player 3")
  assert_equal(["Lauren", "Jamie", "player 3"], the_club.players)
end

def test_check_the_players_name
  the_club = Sports.new("Codeclan", ["Lauren", "Jamie"] ,"Alex")
  assert_equal(true, the_club.check_players_name("Lauren"))
end

def test_add_points_in
  the_club = Sports.new("Codeclan", ["Lauren", "Jamie"] ,"Alex")
  the_club.game_result("Wins")
  assert_equal(2, the_club.points)
end

end
