class StatusRecord < ActiveRecord::Base
  attr_accessible :absence_reason, :absence_time, :beginning, :end, :memo, :status, :student_list_id

  belongs_to :student_list
end
