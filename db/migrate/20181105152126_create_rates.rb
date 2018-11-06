class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :rate, null: false, default: 0
      t.integer :user_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
