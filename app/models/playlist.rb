class Playlist < ApplicationRecord
  has_many :playlist_songs, dependent: :destroy
  has_many :songs, through: :playlist_songs

  validates :name, presence: true
  validates :description, presence: true
end
