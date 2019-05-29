class Review < ApplicationRecord
  belongs_to :user
  belongs_to :space, dependent: :destroy
  # validates :content
end
