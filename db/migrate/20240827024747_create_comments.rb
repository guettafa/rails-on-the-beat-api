class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :artist
      t.references :sound

      t.timestamps
    end
  end
end
