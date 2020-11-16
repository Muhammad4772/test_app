class CreateTaskzs < ActiveRecord::Migration[6.0]
  def change
    create_table :taskzs do |t|
      t.string :name
      t.string :description
      t.string :tasktype
      t.references :team_lead, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
