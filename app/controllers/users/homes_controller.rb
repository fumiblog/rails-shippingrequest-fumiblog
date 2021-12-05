class Users::HomesController < ApplicationController
  def top
  end

  def index
    @heads = Head.all
    # @day_heads = Head.all
    if user_signed_in?
      @user_heads = Head.where(user_id: current_user.id)
      # byebug
      @day_heads = @user_heads.where(ship_date: Time.current.in_time_zone.all_day)
    else
      @day_heads = Head.where(ship_date: Time.current.in_time_zone.all_day)
    end
    # @day_heads = Head.where(ship_date: "2021-12-05 17:50:00.000000000")
    # if user_signed_in?
      # gon.user_name = Head.where(ship_date: cure)
    #   gon.user_name = current_user.name
    # end
    
    # byebug
    # if params = nil
    #   @day_heads = Head.where(ship_day: Time.now)
    # else
    # end
  end
  
end
