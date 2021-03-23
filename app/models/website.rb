class Website < ApplicationRecord
  belongs_to :user
  validates :type, presence: true,length: { maximum: 20 }
  validates :account, presence: true,length: { maximum: 100 }
  validates :user_id, {presence: true}
  validates :comment,length: { maximum: 100 }
end
