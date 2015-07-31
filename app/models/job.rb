class Job < ActiveRecord::Base
  has_many :job_applications
  has_many :questionaires
end
