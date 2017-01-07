require 'rails_helper'

describe User do

  before { @user = User.new(
      user_name: "Тестовое имя",
      surname: "Тестовая фамилия",
      patronymic: "Тестовое отчество",
      email: "user@example.com",
      password: "qwerty",
      password_confirmation: "qwerty",
      role_id: 2)
  }

  subject { @user }

  #общая валидация
  it { should respond_to(:user_name) }
  it { should respond_to(:surname) }
  it { should respond_to(:patronymic) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:role_id) }

  it { should be_valid }

  #провальная валидация на отсутствие
  describe "when name is not present" do
    before { @user.user_name = " " }
    it { should_not be_valid }
  end

  describe "when surname is not present" do
    before { @user.surname = " " }
    it { should_not be_valid }
  end

  describe "when patronymic is not present" do
    before { @user.patronymic = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when password is not present" do
    before { @user.password = @user.password_confirmation = " " }
    it { should_not be_valid }
  end

  describe "when role is not present" do
    before { @user.role_id = nil }
    it { should_not be_valid }
  end

  #провальная валидация на длину
  describe "when name is little" do
    before { @user.user_name = "a" * 2 }
    it { should_not be_valid }
  end

  describe "when surname is little" do
    before { @user.surname = "a" * 2 }
    it { should_not be_valid }
  end

  describe "when patronymic is little" do
    before { @user.patronymic = "a" * 2 }
    it { should_not be_valid }
  end

  #валидация корректности email
  # %w - делает из строки массив
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user@foo userfoo.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.com user-user@foo.com user.user@foo.com]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  #валидация уникальности email при создании пользователя
  # dup - делает дубликат юзера
  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  #несовпадение подтверждения пароля
  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "qwerty_1" }
    it { should_not be_valid }
  end

  #длина пароля
  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  #проверка аутентификация пользователя
  # let - создает переменную found_user и user_for_invalid_password
  # eq - сравнивает @user c found_user и user_for_invalid_password
  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }
    let(:user_for_invalid_password) { found_user.authenticate("invalid") }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      it { should_not eq user_for_invalid_password }
    end
  end


  describe "signup page" do

    before { visit signup_path }

    let(:submit) { "ЗАРЕГИСТРИРОВАТЬСЯ" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "user[user_name]", with: "Тестовое имя"
        fill_in "user[surname]", with: "Тестовая фамилия"
        fill_in "user[patronymic]", with: "Тестовое отчество"
        fill_in "user[email]", with: "user@example.com"
        fill_in "user[password]", with: "qwerty"
        fill_in "user[password_confirmation]", with: "qwerty"
        select "Врач", from: "user_role_id"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end















  #валидация связей
  it 'has one role' do
    asso = described_class.reflect_on_association(:role)
    expect(asso.macro).to eq :belongs_to
  end

  it 'has one patient' do
    asso = described_class.reflect_on_association(:patient)
    expect(asso.macro).to eq :belongs_to
  end

  it 'has one medic' do
    asso = described_class.reflect_on_association(:medic)
    expect(asso.macro).to eq :belongs_to
  end

  it 'has many reviews' do
    asso = described_class.reflect_on_association(:reviews)
    expect(asso.macro).to eq :has_many
  end



end