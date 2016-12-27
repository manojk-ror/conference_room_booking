class AddPriceToConferenceRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :conference_rooms, :before_discount_amount, :integer, default: 5000
    add_column :conference_rooms, :discount_rate, :float, default: 0
    add_column :conference_rooms, :after_discount_amount, :integer
  end
end
