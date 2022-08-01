# == Schema Information
#
# Table name: artists
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artist < ApplicationRecord
  has_many :songs

  before_commit :remove_surround_blank

  def remove_surround_blank
    self.name = name.strip
  end
end
