class Song < ApplicationRecord
  belongs_to :album
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs

  validates :title, presence: true
end
