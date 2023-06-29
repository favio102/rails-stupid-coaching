class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:answer]
    @answer = if @ask && @ask.downcase == 'i am going to work'
                'Great!'
              elsif @ask && @ask.ends_with?('?')
                'Silly question, get dressed and go to work!'
              elsif @ask == 'Hello'
                "I don't care, get dressed and got to work!"
              else
                "I don't care, get dressed and got to work!"
              end
  end
end
