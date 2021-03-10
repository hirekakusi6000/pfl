class Link < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :coment,length: { maximum: 500 }
  # httpsのみ許可
  validates :url, url: { schemes: ['https'],message: 'が空欄又は不正です' }
  validates :url, uniqueness: true
end
