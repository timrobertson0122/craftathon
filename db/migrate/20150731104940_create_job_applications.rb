class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|

      t.timestamps null: false
    end
  end
end
