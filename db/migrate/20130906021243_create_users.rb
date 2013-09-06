class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :lic_state
      t.string :lic_number
      t.string :password_digest
      t.datetime :lic_initial_date

      t.timestamps
    end
  end
end
