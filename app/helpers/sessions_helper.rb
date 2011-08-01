module SessionsHelper
  def sign_in(user)
    session[:current_user] = user
    current_user = user
  end

  def current_user
    @current_user ||= user_from_session
  end

  def current_user?(user)
    user == current_user
  end

  def user_from_session
    session[:current_user]
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    session[:current_user] = nil
    current_user = nil
  end

  def authenticate
    deny_access unless signed_in?
  end

  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page"
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end

  private

  def store_location
    session[:return_to] = request.fullpath
  end

  def clear_return_to
    session[:return_to] = nil
  end
end

