class CreatePockemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pockemons do |t|
      t.string :name
      t.string :desciption
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
