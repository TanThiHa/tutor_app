class Tutor < ApplicationRecord
  belongs_to :user
  has_many :certificates, dependent: :destroy
  has_many :majors, dependent: :destroy
  has_many :subjects, through: :majors
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :name, presence: true
  validates :gender, presence: true
  validates :dob, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :literacy, presence: true
  validates :avatar, presence: true
end