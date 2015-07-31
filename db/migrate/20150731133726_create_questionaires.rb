class CreateQuestionaires < ActiveRecord::Migration
  def change
    create_table :questionaires do |t|
      t.string :company_name
      t.integer :size
      t.integer :positions
      t.string :tech
      t.string :actualtech
      t.text :tasks
      t.text :results
      t.text :difference
      t.text :ideal
      t.text :recruitment
      t.text :character
      t.text :onboarding
      t.text :training
      t.string :pay
      t.string :location
      t.string :parttime

      t.timestamps null: false
    end
  end
end
