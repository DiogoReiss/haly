defmodule Haly do
  def attack(mobLife, damage) do
    randomDamage = damage - :rand.uniform(damage) # 0..damage - damage
    mobLife - randomDamage # life - randomDamage
  end

  def isAlive(rec_damage) do
    if (rec_damage >= 0) do
      IO.puts "Essa doeu!"
    else
      IO.puts "É melhor bater mais forte!"
    end
  end

  def main do
    mobDamageRect = attack(50, 100)
    mobIsAlive = isAlive(mobDamageRect)
    IO.puts mobDamageRect
    IO.puts mobIsAlive
    :timer.sleep(1000)
    main()
  end
end


Haly.main()
