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
    
    def current_player
        @players[@current_player_indice]
    end

    def winner
        @players.max_by{|p| p.life}
    end

    # actual game prompts
    def run
        loop do
            q = Generator.new
            puts "#{current_player.id}, what does #{q.num1} + #{q.num2} equal?"
            print "> "
            $stdout.flush
            answer = gets.chomp

            if answer.to_i != q.result.to_i
                puts "#{current_player.id}: are you serious? No!"
                current_player.life -= 1
            else
                puts "#{current_player.id}: YES!"
            end

            puts "#{@players[0].id}: #{@players[0].life}/3 vs #{@players[1].id}: #{@players[1].life}/3"

            if current_player.gameover?
                puts "#{winner.id} wins the game with a score of #{winner.life}/3"
                puts "\n----------- Game Over -----------"
                puts "Bye Bye"
                break
            end
            puts "\n----------- New Turn -----------"
            next_player
        end
    end
end