class AlbumSerializer < ActiveModel::Serializer
    attributes :title, :artist, :image_url, :genre_id, :genre
    belongs_to :genre
end
