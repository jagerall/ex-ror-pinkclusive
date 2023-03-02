class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.text :capacity
      t.integer :pv
      t.integer :atk
      t.integer :def
      t.text :image

      t.timestamps
    end
  end
end
