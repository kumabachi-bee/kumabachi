class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # --------------- バリデーション --------------
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :gender, inclusion: { in: [true, false] }
  validates :birthday, presence: true
  validates :tel, presence: true
  validates :is_mail_magazine, inclusion: { in: [true, false] }
  validates :is_deleted, inclusion: { in: [true, false] }
end
