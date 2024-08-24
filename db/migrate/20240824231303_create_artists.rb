class CreateArtists < ActiveRecord::Migration[7.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :bio

      t.timestamps
    end
  end
end
