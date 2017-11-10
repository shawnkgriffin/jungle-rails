class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :product
      t.references :user
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
