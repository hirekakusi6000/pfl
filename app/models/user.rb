class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :links, dependent: :destroy
  has_many :twitters, dependent: :destroy  
  has_many :instagrams, dependent: :destroy
  has_many :facebooks, dependent: :destroy
  has_many :youtubes, dependent: :destroy
  has_many :tiktoks, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true 
  validates :name,length: { maximum: 50 }
  mount_uploader :icon_image, ImageUploader
  mount_uploader :header_image, ImageUploader
end