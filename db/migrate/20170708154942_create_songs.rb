class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.text :description
      t.string :youtube_link
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
