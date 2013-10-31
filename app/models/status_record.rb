class StatusRecord < ActiveRecord::Base
extend Enumerize
  attr_accessible :absence_reason, :absence_time, :beginning, :end, :memo, :status, :student_list_id

  belongs_to :student_list
  enumerize :absence_time, in: [:halfyear, :oneyear, :other]#, default: :halfyear
end
