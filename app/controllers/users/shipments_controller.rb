class Users::ShipmentsController < ApplicationController
  def new
    @head = Head.new
    # @shipped = Shipped.new
    # byebug
    @construction = Construction.find(params[:id])
    @bodies = Body.where(construction_id: params[:id])
  end

  def create
    @head = Head.new(head_params)
    # byebug
    @construction = Construction.find(params[:head][:construction_id])
    # byebug
    if params[:flag] == '0'
      @head.delivery = @construction.delivery_name
      @head.delivery_address = @construction.address
      @head.delivery_person = @construction.person
      @head.delivery_tel = @construction.tel
    elsif params[:flag] == '1'
    end
    @head.user_id = current_user.id
    # byebug
    @head.save!
    redirect_to users_shipments_path
  end

  def index
    @heads = Head.all
  end

  def destroy
    @head = Head.find(params[:id])
    @head.destroy
    redirect_to users_shipments_path
  end


  private
  def head_params
    params.require(:head).permit(
      :created_date,
      :ship_date,
      :vehicle,
      # :arrival_time,
      :unic,
      :waiting_place,
      :rain,
      :delivery,
      :delivery_person,
      :delivery_tel,
      :delivery_address,
      :order_no,
      :construction_id,
      :remark,
      :user_id
    )
  end
end
