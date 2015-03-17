class QuestionsController < ApplicationController
  def index

    @questions=Question.first
      p params[:counter]
        #@nextquestion=@questions.
        #@next=@questions.i
  end

  def next

    respond_to do |format|
      format.js{}
    end
  end

  def prev

     respond_to do |format|
       format.js{}
     end
  end

  def allquestions
    @questions=Question.find(params[:count])

       respond_to do |format|
         format.js{}
       end
    #@questions=Question.find(params[:count])
    #@iterate=@questions.id.next
    #@next=Question.find_by(:id=>@iterate)

  end

  def prevquestions
    @questions=Question.find(params[:negcount])

    respond_to do |format|
      format.js{ }
    end
  end

  def buttonvalue
     #@buttonvalue=Answer.find(params[:id])
     respond_to do |format|
       format.js{"render :nothing=>true"}
    end
  end
end
