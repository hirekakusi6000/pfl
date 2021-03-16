class Link < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 100 }
  validates :coment,length: { maximum: 500 }
  validates :url,length: { maximum: 100 }
  validates :user_id, {presence: true}
  # httpsのみ許可
  validates :url, url: { schemes: ['https'],message: 'が空欄又は不正です' }
end
