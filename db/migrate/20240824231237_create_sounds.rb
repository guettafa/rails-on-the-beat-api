class CreateSounds < ActiveRecord::Migration[7.2]
  def change
    create_table :sounds do |t|
      t.string :title
      t.string :description
      t.references :artist

      t.timestamps
    end
  end
end
