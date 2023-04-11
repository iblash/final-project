# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  address    :string
#  name       :string
#  phone      :string
#  position   :string
#  specialty  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
end
