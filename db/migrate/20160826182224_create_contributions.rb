class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :user_id
      t.integer :campaign_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
