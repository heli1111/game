require './generator'

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

    # switch between players
    def next_player
        @current_player_indice = (@current_player_indice + 1) % players.size
    end

    # generate random number
    

    # actual game prompts
    def run
        i = 0
        loop do
            @num1 = rand(1..20)
            @num2 = rand(1..20)
            result = Generator.new(@num1, @num2).result
            puts "#{@players[@current_player_indice].id}, what does #{@num1} + #{@num2} euqal to?"
            answer = gets.chomp 
            puts "result: #{result}, answer: #{answer}"
            next_player
            i += 1
            if i == 4
                break
            end
        end
    end
end