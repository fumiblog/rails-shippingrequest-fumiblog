class Users::JobsController < ApplicationController
  def index
    @job = Job.new
    @person = Person.find(params[:id])
    @jobs = Job.where(person_id: @person.id).order(date: "DESC")
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
    if @job.update(job_params)
      flash[:notice] = "編集できました"
    end
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
