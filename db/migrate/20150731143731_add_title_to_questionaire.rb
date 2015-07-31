class AddTitleToQuestionaire < ActiveRecord::Migration
  def change
    add_column :questionaires, :title, :string
  end
end
