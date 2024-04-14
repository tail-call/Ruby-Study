class Pony
  attr_accessor :race, :name, :season_appeared

  def initialize(race, name, season_appeared)
    @race = race
    @name = name
    @season_appeared = season_appeared
  end

  def display_info
    puts "Pony #{@name} the #{@race} has appeared in season #{@season_appeared}"
  end
end

ponies = [
  Pony.new("Wingecorn", "Twilight Sparkle", 1),
  Pony.new("Unicorn", "Moondancer", 5),
  Pony.new("Earth Pony", "Coco Pommel", 4),
]

# Shuffle is non-mutating. To mutate, one would use ponies.shuffle!
ponies.shuffle.each do |pony|
  pony.display_info
end

puts ponies
