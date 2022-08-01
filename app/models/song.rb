# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  name       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer          not null
#
class Song < ApplicationRecord
  belongs_to :artist

  before_save :remove_surround_blank

  def remove_surround_blank
    self.name = name.strip
  end
end
