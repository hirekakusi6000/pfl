class Youtube < ApplicationRecord
  belongs_to :user
  # 空欄不可 最大文字数
  validates :account, presence: true,length: { maximum: 100 }
  validates :user_id, {presence: true}
  # httpsのみ許可
  validates :account, url: { schemes: ['https'],message: 'が空欄又は不正です' }
  validates :comment,length: { maximum: 200 }
end
