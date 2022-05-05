class Questions

  attr_reader :number_one :number_two

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    @sum = @number_one + @number_two
  end

  def question_prompt(name)
    puts "#{name}: What does #{number_one} plus #{number_two} equal?"
  end

  def answer_check?(answer)
    @sum == answer
  end

  def question_new
    question = Questions.new
    question.question_prompt(name)
    @answer = $stdin.gets.chomp.to_i

    question.answer_check?(@answer) ? puts "YES! You are correct." : puts "Seriously? No."
  end 

end