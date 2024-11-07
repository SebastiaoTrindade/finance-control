class DashboardController < ApplicationController
  before_action :logged_in_user
  layout 'dashboard'
  
  def index
    @total_despesas = Transaction.where(tipo: 'despesa').sum(:amount)
    @total_receitas = Transaction.where(tipo: 'receita').sum(:amount)
  end
end
