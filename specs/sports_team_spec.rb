require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < Minitest::Test

  def test_get_team_name
    team = SportsTeam.new('Falcons', ['Bob','Sally','Jim'], 'Wilma')
    assert_equal('Falcons', team.name)
  end

  def test_get_team_players
    team = SportsTeam.new('Falcons', ['Bob','Sally','Jim'], 'Wilma')
    assert_equal(['Bob','Sally','Jim'], team.players)
  end

  def test_get_team_coach
    team = SportsTeam.new('Falcons', ['Bob','Sally','Jim'], 'Wilma')
    assert_equal('Wilma', team.coach)
  end

  def test_set_coach_name
    team = SportsTeam.new('Falcons', ['Bob','Sally','Jim'], 'Wilma')
    team.coach=('Betty')
    assert_equal('Betty', team.coach)
  end

  def test_add_new_player
    team = SportsTeam.new('Falcons', ['Bob','Sally','Jim'], 'Wilma')
    team.new_player('Fred')
    assert_equal(4, team.players.length)
  end
end
