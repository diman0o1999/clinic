class Patient < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  has_many :questions
end