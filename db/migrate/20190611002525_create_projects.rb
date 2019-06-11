class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :technologies
      t.string :description
      t.string :url
      t.string :date

      t.timestamps
    end
  end
end
