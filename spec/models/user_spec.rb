require 'rails_helper'

RSpec.describe User, type: :model do
  require 'rails_helper'
  
    describe 'Validations' do
      
      it 'should succeed with all required parameters' do
        @user = User.create(first: "bart", last: "simpson", email: "bart@simpsons.com", password: 'cooldude', password_confirmation: 'cooldude')
        expect(@user).to be_a User # check for presence of error
      end
      
      it 'should have a first name' do
        @user = User.create(last: "simpson", email: "bart@simpsons.com", password: 'cooldude', password_confirmation: 'cooldude')
        expect(@user.errors[:first]).to include("can't be blank") # check for presence of error
      end

      it 'should have a last name' do
        @user = User.create(first: "bart", email: "bart@simpsons.com", password: 'cooldude', password_confirmation: 'cooldude')
        expect(@user.errors[:last]).to include("can't be blank") # check for presence of error
      end
  
      it 'should have an email' do
        @user = User.create(first: "bart", last: "simpson", password: 'cooldude', password_confirmation: 'cooldude')
        expect(@user.errors[:email]).to include("can't be blank") # check for presence of error
      end
  
      it 'password and password confirmation fields must match' do
        @user = User.create(first: "bart", last: "simpson", email: "bart@simpsons.com", password: 'cooldude', password_confirmation: 'cooldudette')
        expect(@user.errors[:password_confirmation]).to include("doesn't match Password") # check for presence of error
      end
      
      it 'password must have a length of 8' do
        @user = User.create(first: "bart", last: "simpson", email: "bart@simpsons.com", password: 'cool', password_confirmation: 'cool')
        expect(@user.errors[:password]).to include("is too short (minimum is 8 characters)") # check for presence of error
      end
      
      it 'should have a category' do
        # @category = Category.create(name:'new category')
        # @product = Product.create(name: 'product', price: 50, quantity: 4)
        # expect(@product.errors[:category]).to include("can't be blank") # check for presence of error
      end
    end
  end
  