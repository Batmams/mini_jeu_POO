require 'pry'

class Player
    attr_accessor :names, :life_points
    # @@all_players = []

    def initialize(player_name, points = 10)
        @names = player_name
        @life_points = points
        # @@all_players << self
    end

    # def self.all
    #     @@all_players
    # end

    def show_state
        puts "#{@names} a #{@life_points} points de vie"
    end

    def gets_damage(damage)
        damage = damage.to_i
        @life_points = life_points - damage
    end

    def attacks(second_player)
        attack_damage = compute_damage
        puts "Le joueur #{names} attaque #{second_player.names} joueur 2"
        second_player.gets_damage(attack_damage)
        puts "#{names} Il lui inflige #{attack_damage} points de dommages"
    end
    
    def compute_damage
        return rand(1..6)
    end

end

class HumanPlayer < Player
    attr_accessor :weapon_level, :names, :life_points

    def initialize(player_name, player_life = 100, weapon_level = 1)
        @names = player_name
        @life_points = player_life
        @weapon = weapon_level
    end

    def show_state
        puts "#{@names} a #{@life_points} points de vie et une arme de niveau #{@weapon}"
    end

    def compute_damage
        rand(1..6) * @weapon
    end

    def search_weapon
        weapon_found = rand(1..6)
        puts "Tu as obtenu une arme de niveau #{weapon_found}"
        if weapon_level > @weapon
            puts "Bravo, tu as chopé une arme de fou malade"
        else weapon_found <= @weapon
            puts "Pas mal... mais elle n'est pas mieux que l'arme de fou malade que tu as en ta possession"
        end
    end

    def search_health_pack
        health_found = rand(1..6)
        if health_found == 1
        puts "Tu n'as rien trouvé sale plouc"
        if health_found > 2 && health_found < 5
        @life_points = @life_points + 50
        puts "Cool, tu viens de trouver 50 points de vie ! Pas mal pour un plouc"
        if health_found == 6
        @life_points = @life_points + 80
        puts "Bravo, tu viens de trouver 80 points de vie ! Quel crack"
        if @life_points > 100
          @life_points == 100
        end
        end
        end
        end
      end
      

    




            



