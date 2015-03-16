class QuestionsController < ApplicationController
  def index
    @current_question=Question.first

    @next=Question.find_by(:id=>@iterate)


  end

  def next
    @questions=Question.find_by(params[:question_id])
    @current_question = @questions.id.next
    #p @iterate
    


    respond_to do |format|
      format.js{}
    end
  end
end
