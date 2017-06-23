class CreateReviewsTable < ActiveRecord::Migration

  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :guest_id
      t.integer :reservation_id
      t.integer :rating
    end
  end

end
