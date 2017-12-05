# generate math questions
 
class Generator
    attr_accessor :num1, :num2, :result
    
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
        @result = @num1 + @num2
    end
end






=begin
    attr_accessor :result :gameover :answer

    def initialize
        @gameover = false
    end

    def math
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @result = @num1 + @num2
    end

    def question 
        puts "What does #{num1} plus #{num2} equal?"
        @answer = $stdin.gets.chomp
    end
=end



    
    
    
   