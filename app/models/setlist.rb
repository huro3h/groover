class Setlist < ApplicationRecord
  belongs_to :event
  belongs_to :song
  belongs_to :dj
end
