class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :user_id
      t.string :title
      t.integer :goal
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
