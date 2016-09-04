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
  has_many :taggings
  has_many :tags, :through => :taggings

	def self.search(text)
    query = "%#{text}%"

    self.where("profiles.name LIKE ? OR profiles.phone_number LIKE ? OR profiles.email LIKE ?", query, query, query).to_a + self.joins(:tags).where("tags.name LIKE ?", query).to_a
  end
end
