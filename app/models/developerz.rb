class Developerz < ApplicationRecord

	has_many :project_developerzs
	has_many :project2s, through: :project_developerzs

	has_many :developer_leads
	has_many :team_leads, through: :developer_leads
	belongs_to :taskz
end
