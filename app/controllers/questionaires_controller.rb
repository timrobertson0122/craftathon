class QuestionairesController < ApplicationController
  def new
    @questionaire = Questionaire.new
  end

  def create
    @job = Job.create
    @questionaire = Questionaire.new(questionaire_params, job_id: @job.id)
    @questionaire.job_id = @job.id
    @questionaire.save
    redirect_to '/jobs'
  end

  def questionaire_params
    params.require(:questionaire).permit(:title, :company_name, :size, :tasks)
  end
end
