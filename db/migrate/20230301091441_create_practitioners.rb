class CreatePractitioners < ActiveRecord::Migration[7.0]
  def change
    create_table :practitioners do |t|
      t.string :name
      t.string :surname
      t.string :job
      t.integer :phone
      t.text :address
      t.string :city

      t.timestamps
    end
  end
end
