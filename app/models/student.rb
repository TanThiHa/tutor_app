class Student < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :gender, presence: true
  validates :dob, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :literacy, presence: true

  scope :newest, ->{order created_at: :desc}
end
