class AlbumsController < ApplicationController
    
    def index
        albums = Album.all
        render json: albums
    end

    def show
        album = Album.find(params[:id])
        render json: album
    end

    def create
        album = Album.new(album_params)
        if album.save
            render json: album, status: :accepted
        else
            render json: { errors: album.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        album = Album.find_by(params[:id])
        album.destroy
        render json: { message: "#{album.name} was deleted successfully." }
    end

    private

    def album_params
        params.require(:album).permit(:title, :artist, :image_url, :genre_id)
    end
end
