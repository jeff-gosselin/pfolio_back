class AddGithubToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :github, :string
  end
end
