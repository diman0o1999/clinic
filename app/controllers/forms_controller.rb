class FormsController < ApplicationController
  def index
    if !current_user.nil? && admin?
      @filials = Filial.all
    else
      redirect_to root_path
    end

  end

  def select_forms
    #если текущий юзер - админ, то получаем инфу по всем юзерам
    if !current_user.nil? && admin?
      #все заявки по дате в зависимости от выбранного филиала
      @applications =  Filial.find(params[:id]).forms.order('created_at DESC')
      respond_to do |format|
        format.json { render json: @applications }
      end
    else
      redirect_to root_path
    end
  end


  def create
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save

        #отправляем уведомление о записи на почту админа
        FormMailer.service_email.deliver_now

        format.json { render json: {:form => @form} }
      else
        format.json { render :json => @form.errors, :status => 422 }
      end
    end
  end

  private
  def form_params
    params.require(:form).permit(:form_name, :telephone, :filial_id)
  end

end