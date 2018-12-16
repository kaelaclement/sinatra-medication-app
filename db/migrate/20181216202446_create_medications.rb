class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :dose
      t.string :refill_date
      t.string :notes
      t.integer :user_id
    end
  end
end
