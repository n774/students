class AiitMember < ActiveRecord::Base
  extend Enumerize

  attr_accessible :birthday, :kana_name, :gender, :memo, :name

  has_one :privacy
  has_many :prospects
  has_many :exam_lists
  has_many :student_lists

  enumerize :gender, in: [:male, :female], :default => :male #lambda { |aiit_member| GenderIdentifier.gender_for_name(aiit_member.name).to_sym }

  # enumerize :role, in: [:aiit_member, :admin], default: :aiit_member
end
