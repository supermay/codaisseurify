class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :image
      t.string :country
      t.boolean :is_band
      t.string :website

      t.timestamps
    end
  end
end
