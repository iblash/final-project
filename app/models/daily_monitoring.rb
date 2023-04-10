# == Schema Information
#
# Table name: daily_monitorings
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class DailyMonitoring < ApplicationRecord
end
