class Link < ApplicationRecord
  belongs_to :user
  validates :url, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :coment,length: { maximum: 500 }
end
