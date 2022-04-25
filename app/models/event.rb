class Event < ApplicationRecord
  # --------------- アソシエーション ---------------
  has_many :reserves, dependent: :destroy

  # --------------- バリデーション ---------------
  validates :date, presence: true
  validates :limit, presence: true
  validates :is_available, inclusion: {in: [true, false]}
  validates :category, presence: true
  validates :title, presence: true
  validates :body, presence: true

  # --------------- enum ---------------
  enum category: {agriculture: 0, cooking: 1, craft: 2}
end
