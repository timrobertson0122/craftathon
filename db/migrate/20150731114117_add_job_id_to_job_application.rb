class AddJobIdToJobApplication < ActiveRecord::Migration
  def change
    add_reference :job_applications, :job, index: true, foreign_key: true
  end
end
