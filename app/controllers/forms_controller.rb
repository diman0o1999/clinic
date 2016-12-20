class FormsController < ApplicationController
  def index
    redirect_to contacts_url
  end
  def create
    @filials = Filial.all
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
        format.html { redirect_to contacts_url }
        format.json { render json: @form }
      else
        format.html { render "contacts/index" }
        format.json { render json: @form.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  private
  def form_params
    params.require(:form).permit(:name, :telephone, :filial_id)
  end

end