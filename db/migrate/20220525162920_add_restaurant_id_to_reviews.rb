class AddRestaurantIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :restaurant_id, :integer
  end
end
