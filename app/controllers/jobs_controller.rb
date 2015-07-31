class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
  end
end
