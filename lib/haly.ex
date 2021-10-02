defmodule Haly do
  def attack(mob_life, damage) do
    random_damage = damage - :rand.uniform(damage) # 0..damage - damage
    mob_life - random_damage # life - random_damage
  end

  def is_alive?(rec_damage) do
    if (rec_damage >= 0) do
      IO.puts "Ain minha xota"
    else
      IO.puts "Bota pra sentar na PICA"
    end
  end

  def main do
    mob_damage_rec = attack(50, 100)
    mob_is_alive = is_alive?(mob_damage_rec)
    IO.puts mob_damage_rec
    IO.puts mob_is_alive
    :timer.sleep(1000)
    main()
  end
end


Haly.main()
