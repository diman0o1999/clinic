class ContactsController < ApplicationController
  def index
    @name = params[:name]
    @tel = params[:telephone]
    @filial = params[:filial]
  end
end