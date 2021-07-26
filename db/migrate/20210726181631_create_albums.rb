class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :image_url
      t.integer :genre_id

      t.timestamps
    end
  end
end
