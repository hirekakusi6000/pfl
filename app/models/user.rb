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

  # Twitter認証ログイン用
  # ユーザーの情報があれば探し、無ければ作成する
  def self.find_for_oauth(auth)
    user = User.find_by(uid: auth.uid, provider: auth.provider)

    #変数に値を入れるときに、変数がnilかfalseのときのみ値を入れる
    user ||= User.create!(
      uid: auth.uid,
      provider: auth.provider,
      name: auth[:info][:name],
      email: User.dummy_email(auth),
      password: Devise.friendly_token[0, 20]
    )

    user
  end

  #メールアドレスでの認証も実装している場合は、OAuthでの認証時もメールアドレスを保存する必要有
  #emailはダミー用のアドレスを作成して代用
  #email中に時間まで記載しているのは、認証後に退会などで論理削除された後も再度認証ログインできるように
  def self.dummy_email(auth)
    "#{Time.now.strftime('%Y%m%d%H%M%S').to_i}-#{auth.uid}-#{auth.provider}@example.com"
  end

end