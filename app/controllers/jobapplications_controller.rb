class JobapplicationsController < ApplicationController

  def index
    @applications = JobApplication.all
  end

  def new
    @job = Job.find(params[:job_id])
    jobhunter = Jobhunter.first_or_create
    @job.job_applications.create(jobhunter_id: jobhunter.id)
    redirect_to jobapplications_path
  end
end
