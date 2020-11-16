class CreateMileStones < ActiveRecord::Migration[6.0]
  def change
    create_table :mile_stones do |t|
      t.string :name
      t.datetime :date
      t.references :project2, null: false, foreign_key: true

      t.timestamps
    end
  end
end
