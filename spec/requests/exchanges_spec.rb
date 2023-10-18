require 'rails_helper'

RSpec.describe 'Exchanges', type: :request do
  describe ExchangesController do
    before(:each) do
      @user = User.create(name: 'Zohra', email: 'zohra.neda@gmail.com', password: 'password')
      @category = Category.create(author: @user, name: 'Food', icon: 'image_url')
      @transaction = Exchange.create(author: @user, name: 'Burger', category: @category)
    end

    describe 'GET #index' do
      before do
        get category_exchanges_path(@category)
      end

      it 'renders a successful response' do
        expect(response).to be_successful
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it 'response body includes the right placeholders' do
        expect(response.body).to include('Transactions')
      end
    end

    describe 'GET #new' do
      before do
        get new_category_exchange_path(@category)
      end

      it 'renders a successful response' do
        expect(response).to be_successful
      end

      it 'renders the new template' do
        expect(response).to render_template(:new)
      end

      it 'response body includes the right placeholders' do
        expect(response.body).to include('Add new Transaction')
      end
    end
  end
end