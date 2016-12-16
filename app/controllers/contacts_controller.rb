class ContactsController < ApplicationController
  def index
    @form = Form.new
    @filials = Filial.all
  end
end