# == Schema Information
#
# Table name: setlists
#
#  id             :bigint           not null, primary key
#  display_number :integer
#  requested      :boolean          default(FALSE), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  dj_id          :integer          not null
#  event_id       :integer          not null
#  song_id        :integer          not null
#
class Setlist < ApplicationRecord
  belongs_to :event
  belongs_to :song
  belongs_to :dj


end
