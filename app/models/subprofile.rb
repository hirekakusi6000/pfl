class Subprofile < ApplicationRecord
  belongs_to :user
  validates :pfl_text, presence: true,length: { maximum: 5000 }
end
