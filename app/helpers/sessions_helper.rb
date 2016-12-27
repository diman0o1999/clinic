module SessionsHelper
  def sign_in(user)
    remember_token = SecureRandom.urlsafe_base64
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, Digest::SHA1.hexdigest(remember_token.to_s))
  end

  def current_user
    remember_token = Digest::SHA1.hexdigest(cookies[:remember_token].to_s)

    #если @current_user nil, то выдергиваем из базы юзера, иначе оставляем как есть
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def current_user?(user)
    user == current_user
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    remember_token = SecureRandom.urlsafe_base64
    current_user.update_attribute(:remember_token, Digest::SHA1.hexdigest(remember_token.to_s))
    cookies.delete(:remember_token)
  end
end