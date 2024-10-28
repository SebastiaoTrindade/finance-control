class SessionsController < ApplicationController
  layout 'login'

  def new
    redirect_to dashboard_path if logged_in?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: "Login realizado com sucesso!"      
    else
      flash.now[:danger] = "Email ou senha inválidos"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?    
    redirect_to login_path, notice: "Logout realizado com sucesso!"
  end
end
