defmodule Haly do
  def attack(hero, mob) do
    if (mob.mob_defense >= hero.attack_prop) do
      IO.puts "Foi quase :D"
    else
      damage_taken = mob.mob_life - (hero.attack_prop - mob.mob_defense)
      mob = %{ mob | mob_life: damage_taken }
      IO.puts mob.mob_life
      isAlive(mob.mob_life)
    end

  end
  def isAlive(mob_life) do
    if (mob_life <= 0) do
      IO.puts "no"
    else
      IO.puts "si"
    end
  end

  def main do
    hero = %{
      nivel: 1,
      xp: 0.0,
      attack_prop: 15
    }

    mob = %{
      nivel: 1,
      xp: 0.0,
      mob_life: 25,
      mob_defense: :rand.uniform(20)
    }
    attack(hero, mob)
    :timer.sleep(1000)
    main()
  end
end

Haly.main()
