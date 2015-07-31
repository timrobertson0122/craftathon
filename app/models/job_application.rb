class JobApplication < ActiveRecord::Base
  belongs_to :jobhunter
  belongs_to :job

end
