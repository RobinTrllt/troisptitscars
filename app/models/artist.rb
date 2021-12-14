class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
