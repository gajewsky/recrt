class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :addres
      t.integer :phone

      t.timestamps
    end
  end
end
