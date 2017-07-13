class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true, uniqueness: true
  validates :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id }

  has_many :shared_viewers,
  through: :artwork_shares

  has_many :artwork_shares


  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: 'User'
end
