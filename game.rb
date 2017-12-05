# initialize prompts

class Game
    attr_accessor :players

    def initialize
        @players = []
        @current_player_indice = 0
    end

    # add player into playerlist
    def add_player(player)
        @players.push(player)
    end

    def next_player
        @current_player_indice = (@current_player_indice + 1) % players.size
    end

    # actual game prompts
    def run
        i = 0
        loop do
            puts "hello #{@players[@current_player_indice].id}"
            gets.chomp 
            next_player
            i += 1
            if i == 4
                break
            end
        end
    end
end