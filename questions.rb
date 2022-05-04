class Questions

  attr_accessor :number_one :number_two

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
  end

  def question_prompt(player_turn)
    puts "What does #{number_one} plus #{number_two} equal?"
    sum = @number_one + @number_two
    return sum
  end
end