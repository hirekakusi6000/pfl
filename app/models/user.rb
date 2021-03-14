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
         :recoverable, :rememberable, :validatable
  validates :name, presence: true 
  validates :pfl_text, presence: true,length: { maximum: 5000 }
  validates :name,length: { maximum: 50 }
  mount_uploader :icon_image, ImageUploader
  mount_uploader :header_image, ImageUploader

  def self.guest
    find_or_create_by!(email: 'guestuser@example.com',name: "ゲスト",pfl_text: 'text') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end