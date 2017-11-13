require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should succeed with all required parameters' do
      @category = Category.create(name:'new category')
      @product = Product.create(name: 'product', price: 50, quantity: 4, category: @category)
      expect(@product).to be_present # check for presence of error
    end
    
    it 'should have a name' do
      @category = Category.create(name:'new category')
      @product = Product.create( price: 50, quantity: 4, category: @category)
      expect(@product.errors[:name]).to include("can't be blank") # check for presence of error
    end

    it 'should have a price' do
      @category = Category.create(name:'new category')
      @product = Product.create(name: 'product', quantity: 4, category: @category)
      expect(@product.errors[:price]).to include("can't be blank") # check for presence of error
    end
    
    it 'should have a quantity' do
      @category = Category.create(name:'new category')
      @product = Product.create(name: 'product', price: 50, category: @category)
      expect(@product.errors[:quantity]).to include("can't be blank") # check for presence of error
    end
    
    it 'should have a category' do
      @category = Category.create(name:'new category')
      @product = Product.create(name: 'product', price: 50, quantity: 4)
      expect(@product.errors[:category]).to include("can't be blank") # check for presence of error
    end
  end
end
