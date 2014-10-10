require 'test/unit'
require '../Model/battle'
require '../Model/Unit'

class BattleTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @attacker = Unit.new
    @attacker.attackPoints = 100

    @defender = Unit.new
    @defender.defendPoints = 50


  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end


  def test_AttackerWins
    battle = Battle.new
    outcome = battle.decide(@attacker, @defender)
    assert_equal('attacker', outcome)
  end
  def test_defeat_reduces_hit_points
    startingPoints = @defender.defendPoints
    battle = Battle.new
    outcome = battle.decide(@attacker, @defender)

    assert(startingPoints > @defender.defendPoints)
  end
end