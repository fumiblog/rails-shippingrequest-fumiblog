class Users::CompaniesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    # byebug
    if params[:search] == nil
      if params[:key] == "supplier"
        @companies = Company.where(supplier: true)
        @company = Company.new
        @persons = Person.all
      elsif params[:key] == "user"
        @companies = Company.where(supplier: false)
        @company = Company.new
        @persons = Person.all
      elsif params[:key]
        @companies = Company.where('address LIKE ?', "%#{params[:key]}%")
        @company = Company.new
        @persons = Person.all
        # byebug
      elsif params[:id]
        @companies = Company.where(id: params[:id])
        @companies.each do |company|
          @jobs = Job.where(person_id: company.persons.ids)
        end
        @company = Company.new
        @persons = Person.all
        # byebug
      else
        @companies = Company.all
        @company = Company.new
        @persons = Person.all
        # byebug
      end
    else
      @companies = Company.where('name LIKE ?', "%#{params[:search]}%")
      @companies.each do |company|
        @jobs = Job.where(person_id: company.persons.ids)
      end
      @company = Company.new
      @persons = Person.all
      # byebug
    end
  end

  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    @company.save!
    redirect_to users_companies_path
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.user_id = current_user.id
    @company.update(company_params)
    redirect_to users_companies_path
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
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
      :supplier,
      :user_id
    )
  end
end
