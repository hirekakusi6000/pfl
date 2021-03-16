class Subprofile < ApplicationRecord
  belongs_to :user
  validates :user_id, {presence: true}
  validates :title, presence: true,length: { maximum: 100 }
  validates :pfl_text, presence: true,length: { maximum: 2000 }
end
