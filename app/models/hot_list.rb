class HotList < ApplicationRecord
  belongs_to :user
  has_many :job_applies
end
