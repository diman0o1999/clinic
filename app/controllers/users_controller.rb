class UsersController < ApplicationController

  before_action :signed_in_user, only: [:show, :edit, :update]
  before_action :correct_user, only: [:show, :edit, :update]

  def index
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
    @role = User.find(params[:id]).role
  end

  def new
    @user = User.new
    @roles = Role.first(2)
  end

  def create
    @roles = Role.first(2)
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Поздравляем, вы зарегистрировались!"
      redirect_to @user
    else
      @name = params[:user][:name]
      @surname = params[:user][:surname]
      @patronymic = params[:user][:patronymic]
      @email = params[:user][:email]
      render 'new'
    end
  end

  def edit
    @roles = Role.first(2)
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Профиль обновлен!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :surname, :patronymic, :email, :password, :password_confirmation, :role_id)
  end

  def signed_in_user
    redirect_to signin_url, notice: "Авторизуйтесь для продолжения!" unless signed_in?
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(current_user) unless current_user?(@user)
  end


end