class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :awards
      t.string :comics
      t.string :comics_link
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
