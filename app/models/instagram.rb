class Instagram < ApplicationRecord
  belongs_to :user
  validates :account, presence: true
end
