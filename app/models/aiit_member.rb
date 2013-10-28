class AiitMember < ActiveRecord::Base
  extend Enumerize

  attr_accessible :birthday, :kana_name, :gender, :memo, :name

  has_one :privacy
  has_many :prospects
  has_many :exam_lists
  has_many :student_lists

  enumerize :gender, in: [:male, :female], default: :male
end
