class EquipsController < ApplicationController
  def index
    @filials = Filial.all
  end
end