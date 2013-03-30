require File.expand_path('../../spec_helper', __FILE__)
require APP_ROOT.join('config/environment')
require Backstage::Core.root.join("app/controllers/application_controller")

describe ApplicationController do

  let(:session) { Hash.new }

  context '#current_storefront' do
    it 'returns the storefront from the session' do
      session.stub(:current_storefront).and_return('belly')
      expect(session.current_storefront).to eq('belly')
    end
  end


  context 'When StoreFront is required' do

    controller do
      include Backstage::Core::Helpers::CurrentStorefront
      include Backstage::Core::Helpers::RequireStorefront
      before_filter :require_storefront
      def index
        render :text => "Hello"
      end
    end
    
    it "redirects to login" do
      get :index
      expect(response).to redirect_to(new_session_path)
    end

  end


  context 'When StoreFront is required' do

    controller do
      include Backstage::Core::Helpers::CurrentStorefront
      def index
        render :text => "Hello"
      end
    end
    
    it "does not redirect to login" do
      get :index
      expect(response).to be_success
    end

  end



end
