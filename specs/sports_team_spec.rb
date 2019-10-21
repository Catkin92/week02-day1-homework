require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    assert_equal("E35", sports_team.team_name)
  end

  def test_get_players
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    assert_equal(["Sophia", "Catrin", "Stranger"], sports_team.players)
  end

  def test_get_coach
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    assert_equal("John", sports_team.coach)
  end

  def test_set_coach
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    sports_team.coach = "Juan"
    assert_equal("Juan", sports_team.coach)
  end

  def test_add_new_player
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    sports_team.add_new_player("Alien")
    assert_equal(["Sophia", "Catrin", "Stranger", "Alien"], sports_team.players)
  end

  def test_check_player
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    assert_equal(true, sports_team.check_player("Sophia"))
  end

  def test_points_update__win
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    sports_team.points_update("win")
    assert_equal(1, sports_team.points)
  end

  def test_points_update__lose
    sports_team = SportsTeam.new("E35", ["Sophia", "Catrin", "Stranger"], "John", 0)
    sports_team.points_update("lose")
    assert_equal(0, sports_team.points)
  end
end
