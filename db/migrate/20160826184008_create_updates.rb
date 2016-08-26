class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text :html

      t.timestamps null: false
    end
  end
end
