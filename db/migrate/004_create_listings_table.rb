class CreateListingsTable < ActiveRecord::Migration

  def change
    create_table :listings do |t|
      t.integer :host_id
      t.integer :neighborhood_id
      t.float :price
      t.string :listing_type
      t.string :address
      t.string :title
      t.string :description
    end
  end

end
