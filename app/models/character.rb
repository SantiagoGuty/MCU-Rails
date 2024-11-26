class Character < ApplicationRecord
    has_one_attached :profile_image
    has_one_attached :action_image
    has_many :movies, dependent: :destroy
  end
  