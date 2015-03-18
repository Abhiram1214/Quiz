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
     puts params
     @buttonvalue=Answer.find_by_answer(params[:data1])
     @score=params[:score]
     @total=params[:total]
     respond_to do |format|
       format.js{}
     end

  end

  def new
    @newquestion=Question.new
    3.times {@newquestion.answers.build}
  end

  def create
    @newquestion=Question.create(questionparams)
    if @newquestion.save
      redirect_to "/questions/index"
    end
  end

  def questionparams
    params.require(:question).permit(:id,:question,answers_attributes: [:id,:question_id,:answer,:is_correct])
  end
end
