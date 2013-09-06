class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :user_id
      t.integer :state_id
      t.datetime :period_start
      t.datetime :period_end

      t.timestamps
    end
  end
end
