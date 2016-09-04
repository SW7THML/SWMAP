class AddSeatNumber < ActiveRecord::Migration[5.0]
  def change
	add_column :profiles, :seat_number, :integer
  end
end
