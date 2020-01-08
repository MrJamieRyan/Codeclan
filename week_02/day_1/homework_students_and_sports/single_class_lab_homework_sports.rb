class Sports

attr_accessor :team, :players, :coach, :points


  def initialize(team, players, coach)
    @team = team
    @players = players
    @coach = coach
    @points = 0
  end

def get_team_name
  return @team
end


def get_players
  return @players
end


def get_coach_name
  return @coach
end

def new_coach_name(new_name_coach)
  @coach = new_name_coach
end

def new_player_added(new_member)
  @players.push(new_member)
end


def check_players_name(name)
  for player in @players
    if name == player
    return true
    end
  end
end

def game_result(final_score)
  if final_score == "Wins"
      @points += 2
  end
end


end
