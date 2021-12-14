class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy

  validates :title, presence: true
  validates :year, presence: true, numericality: { only_integer: true }, inclusion: { in: 1950..2022 }
end
