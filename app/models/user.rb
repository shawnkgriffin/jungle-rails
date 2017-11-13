class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  validates :first, :last, :email, presence: true
  validates :email, uniqueness: {case_sensitive: false}, on: :create
  validates :password, confirmation:true,  length: { minimum: 8 },on: :create

  def authenticate_with_credentials(email, password)
    nil
  end
end
