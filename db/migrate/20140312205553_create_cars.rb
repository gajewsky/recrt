class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.text :describtion
      t.text :comfort_class
      t.boolean :available
      t.string :picture

      t.timestamps
    end
  end
end
