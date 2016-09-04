class CreateTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
	  t.belongs_to :tag, index: true
	  t.belongs_to :profile, index: true
    end

	create_table :tags do |t|
	  t.string :name
	  t.timestamps
	end 
  end
end
