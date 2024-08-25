class CreateSounds < ActiveRecord::Migration[7.2]
  def change
    create_table :sounds do |t|
      t.string :title
      t.string :description
      t.boolean :hidden
      t.integer :genre
      t.references :artist

      t.timestamps
    end
  end
end
