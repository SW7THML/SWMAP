class AddSns < ActiveRecord::Migration[5.0]
  def change
	add_column :profiles, :facebook, :string
	add_column :profiles, :twitter, :string
	add_column :profiles, :github, :string
	add_column :profiles, :blog, :string
  end
end
