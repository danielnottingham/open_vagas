class CompaniesController < ApplicationController
  def new
    if user_signed_in?
      @company = current_user.build_company
    else
      redirect_to new_user_session_path
    end
  end

  def edit
  end

  def create
    @company = current_user.build_company
    if @company.save
      flash[:notice] = 'Empresa cadastrada com sucesso!'
      redirect_to root_path
    else
      flash[:error] = 'Erro ao cadastrar a empresa.'
      render :new
    end
  end

  def update
  end

  private

  def company_params
    params.require(:company).permit(:name, :url, :logo)
  end
end
