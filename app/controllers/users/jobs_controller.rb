class Users::JobsController < ApplicationController
  def index
    @job = Job.new
    @jobs = Job.where(person_id: params[:id])
    @person = Person.find(params[:id])
    # byebug
  end

  def create
    @job = Job.new(job_params)
    @job.save!
    redirect_to root
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update
    redirect_to root
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to root
  end

  private
  def job_params
    params.require(:job).permit(
      :date,
      :type,
      :content,
      :person_id,
      :completed
    )
  end
end
