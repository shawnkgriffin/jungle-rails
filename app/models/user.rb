class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  validates :first, :last, :email, presence: true
  validates :email, uniqueness: {case_sensitive: false}, on: :create
  validates :password, confirmation:true,  length: { minimum: 8 },on: :create

  class << self
    def authenticate_with_credentials(email, password)
      user = User.find_by_email(email.strip.downcase)
      # If the user exists AND the password entered is correct.
      if user && user.authenticate(password)
        return user
      else
        return nil
      end
    end
  end
end
