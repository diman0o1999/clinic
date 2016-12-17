class FormsController < ApplicationController
  def index
    redirect_to contacts_url
  end
  def create
    @filials = Filial.all
    @form = Form.new(form_params)

    if @form.save
      redirect_to contacts_url
    else
      @name = params[:form][:name]
      @telephone = params[:form][:telephone]
      @filial = params[:form][:filial]
      render 'contacts/index'
    end
  end

  private
  def form_params
    params.require(:form).permit(:name, :telephone, :filial)
  end

end