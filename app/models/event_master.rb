# == Schema Information
#
# Table name: event_masters
#
#  id         :bigint           not null, primary key
#  name       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class EventMaster < ApplicationRecord
end
