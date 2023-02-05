class QuestionsController < ApplicationController
  def home
  end
  def ask
  end
  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "You are so sweet 😍!"
    elsif @question =~ /i am going to work/i
      @answer = "I love you! 🥰"
    elsif @question.ends_with?("?")
      @answer = "Silly question, shut up and give me a kiss! 💋"
    else
      @answer = "I don't care, I just love you! 😍"
    end
  end
end
