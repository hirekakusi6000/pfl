class Instagram < ApplicationRecord
  belongs_to :user
  validates :account, presence: true
  validates :account, uniqueness: true
end
