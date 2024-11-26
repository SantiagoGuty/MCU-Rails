class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string :origin
      t.string :actor
      t.string :actor_link
      t.string :comics_first_apparition

      t.timestamps
    end
  end
end
