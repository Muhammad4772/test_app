class ProjectLead < ApplicationRecord
  belongs_to :team_lead
  belongs_to :project
end
