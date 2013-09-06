class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.integer :lic_period
      t.integer :credit_hours
      t.string :credit_category

      t.timestamps
    end
  end
end
