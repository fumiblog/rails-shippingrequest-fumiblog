class Users::JobsController < ApplicationController
  def index
    @job = Job.new
    @jobs = Job.all
    @person = Person.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    @job.save!
    redirect_to root_path
  end

  def edit
    @job = Job.find(params[:id])
    @person = Person.find(@job.person_id)
  end

  def update
    @job = Job.find(params[:id])
    @job.update
    redirect_to users_jobs_path(id: @job.person_id)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to users_jobs_path(id: @job.person_id)
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
