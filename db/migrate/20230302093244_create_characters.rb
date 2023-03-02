class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :surname
      t.string :pseudonym
      t.integer :age
      t.string :pronoun
      t.string :nationality
      t.string :job
      t.text :capacity
      t.text :fact
      t.text :personality
      t.text :story
      t.text :image

      t.timestamps
    end
  end
end
