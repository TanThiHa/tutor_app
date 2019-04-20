class Post < ApplicationRecord
  belongs_to :tutor, optional: true
  belongs_to :student, optional: true
  belongs_to :subject
  has_many :reports, dependent: :destroy
  has_many :schedules, dependent: :destroy

  validates :level, presence: true
  validates :title, presence: true
  validates :from_date, presence: true
  validates :fee, presence: true, numericality: {only_float: true}

  enum status: {open: 0, waiting: 1,starting: 2, finished: 3}

  def ofTutor?
    brand == "Gia Sư Tìm Trò"
  end
end
