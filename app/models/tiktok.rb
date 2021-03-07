class Tiktok < ApplicationRecord
  belongs_to :user
  validates :account, presence: true
end
