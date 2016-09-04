class Comment < ApplicationRecord
  belongs_to :profile
  validates :commenter, presence: true,
  						length: { minimum:3 }
  validates :body, presence: true,
  					length: { minimum:5 }
end
