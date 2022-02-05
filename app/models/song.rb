class Song < ApplicationRecord
  has_many :events
  belongs_to :artist
end
