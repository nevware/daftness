class Battle
  def decide(attacker, defender)
    if (attacker.attackPoints > defender.defendPoints)
      defender.defendPoints = defender.defendPoints - 10
      "attacker"
    else
      "defender"
    end
  end
end