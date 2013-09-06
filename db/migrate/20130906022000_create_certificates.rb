class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.integer :credits
      t.string :topic
      t.string :course_title
      t.datetime :date
      t.string :credit_category

      t.timestamps
    end
  end
end
