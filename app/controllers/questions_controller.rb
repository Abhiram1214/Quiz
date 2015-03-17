class QuestionsController < ApplicationController
  def index

    @questions=Question.first
    #@nextquestion=@questions.
        #@next=@questions.i
  end

  def next
    @questions=Question.find(params[:count])
    @iterate=@questions.id.next
    @next=Question.find_by(:id=>@iterate)

    #p @iterate

    respond_to do |format|
      format.js{}
    end
  end
end
