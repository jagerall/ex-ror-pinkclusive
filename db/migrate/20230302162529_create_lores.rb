class CreateLores < ActiveRecord::Migration[7.0]
  def change
    create_table :lores do |t|
      t.string :title
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
