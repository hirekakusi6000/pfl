class Twitter < ApplicationRecord
  belongs_to :user
  # 空欄不可 最大文字数
  validates :account, presence: true,length: { maximum: 100 }
  validates :user_id, {presence: true}
  validates :comment,length: { maximum: 100 }
end
