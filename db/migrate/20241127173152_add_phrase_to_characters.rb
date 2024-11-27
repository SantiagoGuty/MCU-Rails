class AddPhraseToCharacters < ActiveRecord::Migration[8.0]
  def change
    add_column :characters, :phrase, :string
  end
end
