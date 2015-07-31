class AddJobhunterIdToJobApplication < ActiveRecord::Migration
  def change
    add_reference :job_applications, :jobhunter, index: true, foreign_key: true
  end
end
