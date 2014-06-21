class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :body, presence: true, length: {in: 10..1500}
  validates :rating, presence: true, numericality: {greater_than: 0, less_than: 6}
  validates :restaurant_id, presence: true
end
