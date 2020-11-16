class Managerz < ApplicationRecord
	
	has_many :project_managerzzs
	has_many :project2s, through: :project_managerzzs
end
