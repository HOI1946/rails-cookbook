class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :category_id, uniquenses: { scope: :category_id }
  validates :comment, length: { minimum: 6 }

end
