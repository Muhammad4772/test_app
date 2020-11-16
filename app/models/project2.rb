class Project2 < ApplicationRecord
    has_many :mile_stones
    
    has_many :project_developerzs
    has_many :developerzs, through: :project_developerz


	has_many :project_leads
	has_many :team_leads, through: :project_leads

	has_many :project_managerzzs
	has_many :managerzs, through: :project_managerzzs

	has_many :taskzs
	has_many :team_leads, through: :taskzs
end
