class QuestionsController < ApplicationController

  def index
    @question = Question.new

    all_questions

    #все врачи
    @all_medic = Medic.joins(:user).order(:id).pluck(:surname, :id)

    #если пользователь авторизован и он пациент
    if !current_user.nil? && role == 'Пациент'
      #id пациента, который отправил вопрос
      @patient = Patient.find_by(user_id: current_user.id).id
    end

  end

  def create

    #публикуем отзыв
    if params[:public_btn]
      #id вопроса, который правим
      @question_public = Question.find_by(id: params[:question][:question_id])
      if @question_public.update_attributes(status_question: 1, medic_id: params[:medic_id], text_answer: params[:question][:text_answer])
        flash[:success] = 'Опубликован!'
        redirect_to questions_path
      else
        @text_answer = params[:question][:text_answer]
        render 'index'
      end

      #убираем с публикации отзыв
    elsif params[:nopublic_btn]
      #id вопроса, который правим
      @question_public = Question.find_by(id: params[:question][:question_id])
      if @question_public.update_attributes(status_question: 0)
        flash[:success] = 'Снят с публикации!'
        redirect_to questions_path
      else
        render 'index'
      end

    else
      @question = Question.new(questions_params)
      if @question.save
        flash[:success] = 'Вопрос на модерации!'
        redirect_to questions_path
      else

        #если пользователь авторизован и он пациент
        if !current_user.nil? && role == 'Пациент'
          #id пациента, который отправил вопрос
          @patient = Patient.find_by(user_id: current_user.id).id
        end

        all_questions

        @text_question = params[:question][:text_question]
        render 'index'
      end

    end

  end


  private

  def questions_params
    params.require(:question).permit(:patient_id, :text_question)
  end

  def all_questions
    #все вопросы упорядочены по дате
    @questions = Question.all.order('created_at DESC')

    #массив врачей
    @medic_questions = []
    #массив пациентов
    @patient_questions = []

    #перебираем все вопросы
    @questions.each do |question|

      #если у вопроса есть отвечающий(врач), находим по id вопроса, врача, который на него ответил
      if !Question.find(question.id).medic.nil?
        @surname_medic =  Question.find(question.id).medic.user.surname
        @name_medic =  Question.find(question.id).medic.user.user_name
        @patronymic_medic = Question.find(question.id).medic.user.patronymic

        @medic_question = "#{@surname_medic}" ' ' "#{@name_medic}" ' ' "#{@patronymic_medic}"

        #закидываем их в соответствующий массив
        @medic_questions.push(@medic_question)
      end

      #если у вопроса есть спрашивающий(пациент), находим по id вопроса, пациента, который его задал
      if !Question.find(question.id).patient.nil?
        @surname_patient =  Question.find(question.id).patient.user.surname
        @name_patient =  Question.find(question.id).patient.user.user_name
        @patronymic_patient = Question.find(question.id).patient.user.patronymic

        @patient_question = "#{@surname_patient}" ' ' "#{@name_patient}" ' ' "#{@patronymic_patient}"

        #закидываем их в соответствующий массив
        @patient_questions.push(@patient_question)
      end
    end
  end


end