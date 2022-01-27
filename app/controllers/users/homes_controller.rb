class Users::HomesController < ApplicationController
  def top
  end

  def index
    @heads = Head.all
    @constructions = Construction.all
    @companies = Company.all
    # @day_heads = Head.all
    if user_signed_in?
      @cs = Company.where(user_id: current_user.id)
      @ps = Person.where(company_id: @cs.ids)
      @jobs = Job.where(person_id: @ps.ids)
      @user_heads = Head.where(user_id: current_user.id)
      # byebug
      @day_heads = @user_heads.where(ship_date: Time.current.in_time_zone.all_day)
    else
      @day_heads = Head.where(ship_date: Time.current.in_time_zone.all_day)
    end
  end
  
end
