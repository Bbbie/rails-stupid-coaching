class QuestionsController < ApplicationController
  def ask
  end

  def answer
    #  store the answer, stored in params in variable (not really necessary)
    @answer = params["question"]
    if @answer == "I am going to work"
      return @coachAnswer = "Great!"
    elsif @answer.include? "?"
      return @coachAnswer = "Silly question, get dressed and go to work!"
    else
      return @coachAnswer = "I don't care, get dressed and go to work!"
    end
  end
end
