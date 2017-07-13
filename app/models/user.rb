class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :number, presence: true

  has_many :shared_artworks,
    through: :artwork_shares

  has_many :artwork_shares,
    foreign_key: :viewer_id

  has_many :artworks,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: 'Artwork'
end
