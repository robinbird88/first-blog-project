class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         mount_uploader :avatar, AvatarUploader
         has_many :posts
         has_many :comments
         # if it breaks, uncomment this!
         paginates_per 3
end
