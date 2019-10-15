require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player_1 = Player.new("Mamadou")
player_2 = Player.new("Josuke")
puts "Selectionner votre combattant"

while player_1.life_points > 0 && player_2.life_points > 0
player_1.show_state
player_2.show_state
puts "A new challenger has entered in the ring"
player_2.attacks(player_1)
player_1.show_state

break if player_1.life_points <= 0
player_1.attacks(player_2)
player_2.show_state
end

if player_1.life_points < player_2.life_points
    puts "#{player_2.names} a gagné"
else
    puts "#{player_1.names} a gagné"
end

binding.pry
