class Users::BodiesController < ApplicationController
  def index
    # byebug
    @construction = Construction.find(params[:id])
    @body = Body.new
    @bodies = Body.where(construction_id: params[:id])
  end

  def create
    @body = Body.new(body_params)
    @body.save!
    redirect_to users_bodies_path
  end

  def edit
    @body = Body.find(params[:id])
  end

  def update
    @body = Body.find(params[:id])
    @body = Body.update!(body_params)
    redirect_to users_bodies_path
  end

  def destroy
    @body = Body.find(params[:id])
    @body.destroy!
    redirect_to users_bodies_path
  end

  private
  def body_params
    params.require(:body).permit(
      :product_name,
      :quantity,
      :format,
      :construction_id
    )
  end
end
