class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
