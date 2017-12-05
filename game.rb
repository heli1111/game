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

    # actual game prompts
    def run
        puts "hello #{@players[@current_player_indice].id}"
    end
end