class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.reference :product
      t.reference :user
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
