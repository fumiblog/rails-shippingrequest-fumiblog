class Users::HomesController < ApplicationController
  def top
  end

  def index
    @heads = Head.all
    @constructions = Construction.all
    @companies = Company.all
    @jobs = Job.all
    # @day_heads = Head.all
    if user_signed_in?
      @user_heads = Head.where(user_id: current_user.id)
      # byebug
      @day_heads = @user_heads.where(ship_date: Time.current.in_time_zone.all_day)
    else
      @day_heads = Head.where(ship_date: Time.current.in_time_zone.all_day)
    end
  end
  
end
