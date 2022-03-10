class QuestionsController < ApplicationController
  before_action :set_question!, except: %i[index new create]

  def show
    @answer = @question.answers.build
    @pagy, @answers = pagy @question.answers.order created_at: :desc
  end

  def update
    if @question.update question_params
      flash[:success] = t('.success')
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def edit; end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.build question_params

    if @question.save
      flash[:success] = t('.success')
      redirect_to questions_path
    else
      render :new
    end
  end

  def index
    @pagy, @questions = pagy Question.order created_at: :desc
  end

  def destroy
    @question.destroy

    flash[:success] = t('.success')
    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end

  def set_question!
    @question = Question.find params[:id]
  end
end
