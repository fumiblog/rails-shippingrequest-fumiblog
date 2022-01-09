class Users::CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    @company.save!
    redirect_to users_companies_path
  end

  private
  def company_params
    params.require(:company).permit(
      :name,
      :post_code,
      :address,
      :tel,
      :fax,
      :ceo,
      :user_id
    )
  end
end
