class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :links, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true 
  validates :name,length: { maximum: 15 }
  with_options if: :facebook_id_1? do
   validates :facebook_id_1, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :facebook_id_2? do
   validates :facebook_id_2, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :facebook_id_3? do
   validates :facebook_id_3, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :facebook_id_1? do
   validates :youtube_id_1, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :youtube_id_2? do
   validates :youtube_id_2, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :youtube_id_3? do
   validates :youtube_id_3, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :tiktok_id_1? do
   validates :tiktok_id_1, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :tiktok_id_2? do
   validates :tiktok_id_2, url: { schemes: ['https'],message: 'が不正です' }
  end
  with_options if: :tiktok_id_3? do
   validates :tiktok_id_3, url: { schemes: ['https'],message: 'が不正です' }
  end
  mount_uploader :icon_image, ImageUploader
  mount_uploader :header_image, ImageUploader
end