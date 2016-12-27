class User < ApplicationRecord
  before_save :create_email
  before_create :create_remember_token

  belongs_to :role

  validates_presence_of :name, :surname, :patronymic, :email, :password, :role_id => "Заполните поле!"
  validates_length_of :name, :surname, :patronymic, :minimum => 3, :message => "Минимальная длина 3 символа!"
  validates_format_of :name, :surname, :patronymic, :with => /[\u0410-\u044F]+/i, :message => "Пишите русскими буквами!"
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, :message => "Неккоректный email!"
  validates_uniqueness_of :email, :case_sensitive => false
  validates_length_of :password, :minimum => 6, :message => "Минимальная длина 6 символов!"
  has_secure_password


  private
  def create_remember_token
    self.remember_token = Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64.to_s)
  end

  def create_email
    self.email = email.downcase
  end

end