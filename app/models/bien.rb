class Bien < ApplicationRecord
  belongs_to :user
  validates :ville, presence: true
  validates :loyé, presence: true
  validates :address, presence: true, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :image1
end
