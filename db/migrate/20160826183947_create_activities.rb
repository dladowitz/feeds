class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :campaign_id
      t.integer :actable_id
      t.string :actable_type

      t.timestamps null: false
    end
  end
end
