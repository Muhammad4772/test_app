class CreateProject2s < ActiveRecord::Migration[6.0]
  def change
    create_table :project2s do |t|
      t.string :name

      t.timestamps
    end
  end
end
