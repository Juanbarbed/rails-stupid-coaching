class QuestionsController < ApplicationController
  def answer
    # @question = "What time is it?"
    # raise
    @question = params[:user_key]
    @answer = coach_answer(@question)
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      return " "
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
