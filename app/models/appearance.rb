class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :guest_id, :episode_id, :rating, presence: :true
  validates :guest_id, uniqueness: {scope: :episode_id}
  validates :rating, numericality: {less_than: 6}
end
