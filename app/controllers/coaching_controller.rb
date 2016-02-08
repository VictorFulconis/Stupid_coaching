class CoachingController < ApplicationController

  def coach_answer(your_message)
    if your_message.split("").include?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I am going to work right now!".upcase
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{coach_answer(your_message)}"
    else
      return coach_answer(your_message)
    end
  end

  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end
end



# require_relative "coach_answer"
# # TODO: Implement the program that makes you discuss with your coach from the terminal.
# puts "What do you want sir?"
# user_question = gets.chomp
# until user_question == "I am going to work right now!" || user_question == "I am going to work right now!".upcase
#   answer = coach_answer_enhanced(user_question)
#   puts answer
#   user_question = gets.chomp
# end
