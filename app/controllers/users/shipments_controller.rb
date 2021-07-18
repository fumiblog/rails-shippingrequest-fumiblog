class Users::ShipmentsController < ApplicationController
  def new
    @head = Head.new
    @constructions = Construction.where(user_id: current_user.id)
  end

  def create
    @head = Head.find(head_params)
    @head.save!
    redirect_to users_shipments_path
  end

  def index
    @heads = Head.all
  end

  private
  def head_params
    params.require(:head).permit(
      :created_date,
      :ship_date,
      :arrival_time,
      :unic,
      :waiting_place,
      :rain,
      :delivery,
      :delivery_person,
      :delivery_tel,
      :delivery_address,
      :order_no,
      :construction_name,
      :construction_metal,
      :remark,
      :user_id
    )
  end
end
