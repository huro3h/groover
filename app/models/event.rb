# == Schema Information
#
# Table name: events
#
#  id              :bigint           not null, primary key
#  published_at    :datetime         not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  event_master_id :integer          not null
#
class Event < ApplicationRecord
  belongs_to :event_master, class_name: 'EventMaster'
end
