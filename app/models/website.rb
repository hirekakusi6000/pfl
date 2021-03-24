class Website < ApplicationRecord
  belongs_to :user
  validates :type,length: { maximum: 20 }
   self.inheritance_column = :_type_disabled
  validates :account, presence: true,length: { maximum: 100 }
  validates :user_id, {presence: true}
  validates :comment,length: { maximum: 100 }

  def url(website)
    if website.type == "twitter"
    website.account = "https://twitter.com/#{website.account}"
    elsif  website.type == "instagram"
    website.account = "https://www.instagram.com/#{website.account}"
    end
  end

end
