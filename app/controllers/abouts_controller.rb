class AboutsController < ApplicationController
  def index
    @filials = Filial.all
  end
end