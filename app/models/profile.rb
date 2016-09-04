# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  name         :string
#  email        :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Profile < ActiveRecord::Base
  has_many :comments

  mount_uploader :avatar, AvatarUploader

	def self.search(text)
    query = "%#{text}%"

    self.where("name LIKE ? OR phone_number LIKE ? OR email LIKE ?", query, query, query)
  end
end
