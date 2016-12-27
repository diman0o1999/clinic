class FormsController < ApplicationController
  def index
    redirect_to contacts_url
  end
  def create
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
        format.json { render json: {:form => @form} }
      else
        format.json { render :json => @form.errors, :status => 422 }
      end
    end
  end

  private
  def form_params
    params.require(:form).permit(:name, :telephone, :filial_id)
  end

end