class Taskz < ApplicationRecord
  belongs_to :team_lead
  belongs_to :project
  has_one :developerz
end
