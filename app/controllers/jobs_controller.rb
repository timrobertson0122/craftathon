class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @questionaire = Questionaire.new
  end
end
