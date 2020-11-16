class CreateProjectDeveloperzs < ActiveRecord::Migration[6.0]
  def change
    create_table :project_developerzs do |t|
      t.references :project2, null: false, foreign_key: true
      t.references :developerz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
