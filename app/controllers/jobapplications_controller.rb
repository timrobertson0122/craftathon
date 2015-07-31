class JobapplicationsController < ApplicationController

  def index
    @applications = JobApplication.all
  end
end
