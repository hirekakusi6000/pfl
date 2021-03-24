class Website < ApplicationRecord
  belongs_to :user
  validates :type,length: { maximum: 20 }
   self.inheritance_column = :_type_disabled
  validates :account, presence: true,length: { maximum: 100 }
  validates :user_id, {presence: true}
  validates :comment,length: { maximum: 100 }

  attr_accessor :sns, :account

  if @status != "edit_page"
  def initialize(**params)
    @sns = params[:sns]
    @account = params[:account]
  end

  def url
    if @sns == "twitter"
      @sns = "https://twitter.com/#{@account}"
    elsif @sns == "instagram"
      @sns = "https://www.instagram.com/#{@account}"
    else
      @account = @account
    end
  end
end

end
