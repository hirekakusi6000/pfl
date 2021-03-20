class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :links, dependent: :destroy
  has_many :twitters, dependent: :destroy  
  has_many :instagrams, dependent: :destroy
  has_many :facebooks, dependent: :destroy
  has_many :youtubes, dependent: :destroy
  has_many :tiktoks, dependent: :destroy
  has_many :subprofiles, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         # 外部API認証用
         :omniauthable, omniauth_providers: [:twitter]
  validates :name, presence: true 
  validates :pfl_text, length: { maximum: 5000 }
  validates :name,length: { maximum: 50 }
  mount_uploader :icon_image, ImageUploader
  mount_uploader :header_image, ImageUploader

  def self.guest
    find_or_create_by!(email: "guestuser@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
    end
  end

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    #userがnilの場合は、新しく作成する
    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    User.dummy_email(auth),
        password: Devise.friendly_token[0, 20]
      )
    end

  end

end