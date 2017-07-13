class ArtworksController < ApplicationController
  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def index
    artworks = Artwork.all
    render json: artworks
  end

  def show
    artwork = Artwork.find_by(id: params[:id])
    if artwork
      render json: artwork
    else
      render plain: 'no artwork found'
    end
  end

  def update
    artwork = Artwork.find_by(id: params[:id])
    if artwork.update_attributes(artwork_params)
      render json: artwork
    else
      render artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find_by(id: params[:id])
    artwork.delete
    render json: artwork
  end

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
