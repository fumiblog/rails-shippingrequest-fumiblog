class Users::PersonsController < ApplicationController
  def new
    @person = Person.new
    @company = Company.find(params[:id])
    # byebug
  end

  def create
    @person = Person.new(person_params)
    # byebug
    # @person.company_id = params[:id]
    @person.save!
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
