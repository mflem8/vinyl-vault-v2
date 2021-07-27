class AddGenreToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_reference :albums, :genre, null: false, foreign_key: true
  end
end
