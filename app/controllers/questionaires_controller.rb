class QuestionairesController < ApplicationController
  def new
    @questionaire = Questionaire.new
  end

  def create
    @job = Job.new
    @questionaire = Questionaire.new(questionaire_params, job_id: @job.id)
    @questionaire.save
    @job.save
    redirect_to '/jobs'
  end

  def questionaire_params
    params.require(:questionaire).permit(:company_name, :size, :tasks)
  end
end
