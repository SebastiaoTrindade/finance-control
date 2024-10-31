class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :logged_in_user

  private
  def logged_in_user
    unless logged_in?
      #flash[:danger] = "Por favor, faça o login"
      redirect_to login_url unless request.path == login_path
    end
  end
end
