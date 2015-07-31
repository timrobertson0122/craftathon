class Job < ActiveRecord::Base
  has_many :job_applications
  has_one :questionaire
end
