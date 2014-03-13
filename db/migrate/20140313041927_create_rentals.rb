class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :car_id
      t.integer :customer_id
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
