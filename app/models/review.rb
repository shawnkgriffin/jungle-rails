class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :description, product, user, presence: true

end
