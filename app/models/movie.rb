class Movie < ApplicationRecord
  belongs_to :character
  has_one_attached :image # Attach one image per movie
end
