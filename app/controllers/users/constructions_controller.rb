class Users::ConstructionsController < ApplicationController
  def index
    @constructions = Construction.where(user_id: current_user.id)
    @bodies = Body.all
    @construction = Construction.new
    # byebug
  end

  def create
    @construction = Construction.new(construction_params)
    @construction.user_id = current_user.id
    @construction.save!
    redirect_to users_constructions_path
  end

  def edit
    @construction = Construction.find(params[:id])
  end

  def update
    @construction = Construction.find(params[:id])
    @construction.user_id = current_user.id
    @construction.update!(construction_params)
    redirect_to users_constructions_path
  end

  def destroy
    @construction = Construction.find(params[:id])
    @construction.destroy
    redirect_to users_constructions_path
  end

  private
  def construction_params
    params.require(:construction).permit(
      :name,
      :order_no,
      :delivery_name,
      :address,
      :person,
      :tel,
      :user_id
    )
  end
end
