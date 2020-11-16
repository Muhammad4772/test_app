class CreateDeveloperLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :developer_leads do |t|
      t.references :team_lead, null: false, foreign_key: true
      t.references :developerz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
