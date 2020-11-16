class CreateProjectLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :project_leads do |t|
      t.references :team_lead, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
