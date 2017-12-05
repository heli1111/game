# initialize players

class Player
    attr_accessor :id, :life

    def initialize(id)
        @id = id
        @life = 3
    end

    def gameover?
        @life == 0
    end

end
