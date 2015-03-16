class QuestionsController < ApplicationController
  def index
    @questions=Question.first
    @next=@questions.increment(:id)
  end

  def next
    @questions=Question.first
    @iterate=@questions.id.next
    @next=Question.find_by(:id=>@iterate)

    #p @iterate

    respond_to do |format|
      format.js{}
    end
  end
end
