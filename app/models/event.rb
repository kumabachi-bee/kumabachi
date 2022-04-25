class Event < ApplicationRecord
  # --------------- アソシエーション ---------------
  has_many :reserves, dependent: :destroy
  
  # --------------- バリデーション ---------------
  validates :date, presence: true
  validates :limit, presence: true
  validates :is_available, presence: true
  validates :category, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
