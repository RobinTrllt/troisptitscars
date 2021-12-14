class PlaylisSong < ApplicationRecord
  belongs_to :playlist
  belongs_to :song
end
