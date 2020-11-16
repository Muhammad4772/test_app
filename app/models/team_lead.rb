class TeamLead < ApplicationRecord

    has_many :taskzs
	has_many :project2s, through: :taskzs


	has_many :project_leads
	has_many :project2s, through: :project_leads


    has_many :developer_leads
	has_many :developerzs, through: :developer_leads

end
