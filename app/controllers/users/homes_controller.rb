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
      @job_incompletes = @jobs.where(completed: "false")
      @job_pasts = @job_incompletes.where("date <= ?", Date.today - 7 )
      @job_periods = @job_pasts + @jobs.where(date: Date.today - 7 .. Date.today + 10).order(date: "DESC")
      @user_heads = Head.where(user_id: current_user.id)
      # byebug
      @day_heads = @user_heads.where(ship_date: Time.new - 1.day .. Time.new + 1.week)
    else
      @day_heads = Head.where(ship_date: Time.new - 1.day .. Time.new + 1.week)
    end
  end
  
end
