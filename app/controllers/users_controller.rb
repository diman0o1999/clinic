class UsersController < ApplicationController

  #чтобы редактировать, обновлять, удалять и просматривать нужно войти
  before_action :signed_in_user, only: [:show, :edit, :update, :destroy]
  #возможность редактировать, обновлять, удалять и просматривать только свой профиль
  before_action :correct_user, only: [:show, :edit, :update, :destroy]


  def index
    #если текущий юзер - админ, то получаем инфу по всем юзерам
    if current_user.admin?
      @users = User.left_outer_joins(:role).select('users.id', 'users.user_name', 'users.surname', 'users.patronymic', 'roles.role_name')
    else
      redirect_to root_path
    end

  end

  def show
    #для доп.форм пациента и врача
    @patient = Patient.new
    @medic = Medic.new

    #все филиалы
    @filials = Filial.all

    #все отделения
    @departaments = Departament.all

    #роль в системе у пользователя
    @role = User.find(params[:id]).role

    #если врач
    if @role.id == 1
      #инфа о враче
      @about_medic = Medic.find_by(user_id: params[:id])

      #если есть информация о враче
      if !@about_medic.nil?
        #филиалы где он работает
        @medic_filials = Medic.find(@about_medic.id).filials.select(:id, :filial_name)
        #отделения где он работает
        @medic_departaments = Medic.find(@about_medic.id).departaments.select(:id, :departament_name)
      end

    #если пациент
    elsif @role.id == 2
      @about_patient = Patient.find_by(user_id: params[:id])
    end

  end

  def new
    @user = User.new
    @roles = Role.first(2)
  end

  def create
    @roles = Role.first(2)
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      flash[:success] = "Поздравляем, вы зарегистрировались!"
      redirect_to @user
    else
      @user_name = params[:user][:user_name]
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

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Вы удалены!"
    redirect_to root_path
  end

  #обработка доп.форм пациента или врача
  def create_dop_info
    #пациент
    if params[:patient_btn]
      @patient = Patient.new(patient_params)
      if @patient.save
        flash[:success] = "Готово!"
        redirect_to current_user
      else
        @tel_number = params[:patient][:tel_number]
        render current_user
      end
    end
    #врач
    if params[:medic_btn]
      @medic = Medic.new(medic_params)
      if @medic.save

        #id врача, который записался в базу
        @medic_id = Medic.find_by(user_id: params[:id]).id
        #id филиалов, которые он отметил в форме
        @filial_id = params[:medic][:filials]
        #id отделений, которые он отметил в форме
        @departament_id = params[:medic][:departaments]

        #перебираем все отмеченные филиалы и пишем в соединительную таблицу
        @filial_id.each do |fil|
          Filials_Medic.create(:medic_id => @medic_id, :filial_id => fil)
        end
        #перебираем все отмеченные отделения и пишем в соединительную таблицу
        @departament_id.each do |dep|
          Departaments_Medic.create(:medic_id => @medic_id, :departament_id => dep)
        end

        flash[:success] = "Готово!"
        redirect_to current_user
      else
        @post1 = params[:medic][:post1]
        @post2 = params[:medic][:post2]
        @post3 = params[:medic][:post3]
        @daywork1 = params[:medic][:daywork1]
        @daywork2 = params[:medic][:daywork2]
        @daywork3 = params[:medic][:daywork3]
        @about = params[:medic][:about]
        render current_user
      end
    end

    #публикуем врача
    if params[:public_btn]
      #врач, который записался в базу
      @medic_public = Medic.find_by(user_id: params[:id])
      if @medic_public.update_attributes(:status_medic => 1)
        flash[:success] = "Опубликован!"
        redirect_to current_user
      else
        render current_user
      end
    end

    #убираем с публикации врача
    if params[:nopublic_btn]
      #врач, который записался в базу
      @medic_public = Medic.find_by(user_id: params[:id])
      if @medic_public.update_attributes(:status_medic => 0)
        flash[:success] = "Снят с публикации!"
        redirect_to current_user
      else
        render current_user
      end
    end

  end


  private

  def user_params
    params.require(:user).permit(:user_name, :surname, :patronymic, :email, :password, :password_confirmation, :role_id)
  end

  def patient_params
    params.require(:patient).permit(:user_id, :tel_number, :avatar)
  end

  def medic_params
    params.require(:medic).permit(:user_id, :avatar, :post1, :post1, :post2, :post3, :daywork1, :daywork2, :daywork3, :about, :filials, :departaments)
  end

  def signed_in_user
    #если текущий пользователь пустой
    if current_user.nil?
      flash[:notice] = "Авторизуйтесь для продолжения!"
      redirect_to signin_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    #если пользователь не равен текущему или админу, то отправляем его на свою страницу
    if @user != current_user && !admin?
      redirect_to(current_user)
    end
  end


end