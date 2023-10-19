require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe CategoriesController do
    before(:each) do
      @user = User.create(name: 'Zohra', email: 'zohra.neda@gmail.com', password: 'password')
      @category = Category.create(author: @user, name: 'Food', icon: 'image_url')
      @transaction = Exchange.create(author: @user, name: 'Burger', category: @category)
      sign_in @user
    end

    describe 'GET #index' do
      before do
        get categories_path
      end

      it 'renders a successful response' do
        expect(response).to be_successful
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it 'response body includes the right placeholders' do
        expect(response.body).to include('Categories')
      end
    end

    describe 'GET #new' do
      before do
        get new_category_path
      end

      it 'renders a successful response' do
        expect(response).to be_successful
      end

      it 'renders the new template' do
        expect(response).to render_template(:new)
      end

      it 'response body includes the right placeholders' do
        expect(response.body).to include('Add new Category')
      end
    end
  end
end
