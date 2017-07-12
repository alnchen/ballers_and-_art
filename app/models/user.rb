class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :number, presence: true

  has_many :art,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: 'Artwork'
end
