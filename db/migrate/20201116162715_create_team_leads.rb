class CreateTeamLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :team_leads do |t|
      t.string :name
      t.string :email
      t.string :designation

      t.timestamps
    end
  end
end
