class Users::HomesController < ApplicationController
  def top
  end

  def index
    @heads = Head.all
    @day_heads = Head.all
    # @day_heads = Head.where(ship_day: Date.today)
    if user_signed_in?
      # gon.user_name = Head.where(ship_date: cure)
      gon.user_name = current_user.name
    end
    
    # byebug
    # if params = nil
    #   @day_heads = Head.where(ship_day: Time.now)
    # else
    # end
  end
  
end
