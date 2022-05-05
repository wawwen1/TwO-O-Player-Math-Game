class Players

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive?
    @lives == 0
  end

  def question_new
    question = Questions.new
    question.question_prompt(name)
    @answer = $stdin.gets.chomp.to_i

    if question.answer_check?(@answer) 
       puts "YES! You are correct." 
    else 
      puts "Seriously? No."
      @lives -= 1
    end
  end

end