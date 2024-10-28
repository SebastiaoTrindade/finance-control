class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new()
    if @user.save
      redirect_to login_path, notice: "Conta criada com sucesso! Faça login para continuar."
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
