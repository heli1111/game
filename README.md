
....

class GameMaster
    
    def initialize
        @players = []
        @dead = false
    end
    
    def add_player(player)
        @players.push(player)
    end
    
    def loop
        index = 0
        while !@dead
            @dead = prompt(@players[index])
            index++
            if index > @players.length - 1
                index = index - @player.length - 1
            end
        end
        # finish program

    end

    def prompt(player)
        # generate two numbers
        # ask questions
        # listen for prompt
        # give result

        # return false if dead
        true
    end

end


Code Plan

- Skeleton - connect everything

- (gm) prompt math question to player 1 
- (gm) prompt questions to switch between play 1 & 2
- (prompt math question to players & get result
- evaluate result to be correct or not
- assign life to players
- take life if answer not correct
- add game over function


def add_player(player)
        @players.push(player)
    end

    def run
        # loop
        # call prompt each time loop
        #puts "hello player #{@players[@current_player_indice]}"
    end

    # prompt math question to player 1 
    # 1) find player to ask
    # 2) generate math question
    # 3) prompt the question
    def current_player
    end

    # return question object
    def generate_question
    end

    # prompt
    def prompt
        cur_player = current_player()
        q = generate_question()
        # do something
    end

    



end