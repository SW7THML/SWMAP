class AddAvatarToProfile < ActiveRecord::Migration[5.0]
  def up
    add_attachment :profiles, :avatar
  end

  def down
    remove_attachment :profiles, :avatar
  end
end
