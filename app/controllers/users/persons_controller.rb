class Users::PersonsController < ApplicationController
  def new
    @person = Person.new
    @company = Company.find(params[:id])
    # byebug
  end

  def index
    @person = Person.new
    @persons = Person.where(company_id: params[:id])
    @company = Company.find(params[:id])
  end

  def create
    @person = Person.new(person_params)
    @person.save!
    redirect_to users_companies_path
  end

  def edit
    @person = Person.find(params[:id])
    @company = Company.find(@person.company_id)
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    redirect_to users_companies_path
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to users_companies_path
  end

  private
  def person_params
    params.require(:person).permit(
      :name,
      :company_id,
      :handy_phone,
      :position
    )
  end
end
