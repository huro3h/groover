# == Schema Information
#
# Table name: djs
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Dj < ApplicationRecord
end
