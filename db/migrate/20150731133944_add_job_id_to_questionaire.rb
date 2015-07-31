class AddJobIdToQuestionaire < ActiveRecord::Migration
  def change
    add_reference :questionaires, :job, index: true, foreign_key: true
  end
end
