class CreateJobhunters < ActiveRecord::Migration
  def change
    create_table :jobhunters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
